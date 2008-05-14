package hosc;

import scala.util.parsing.input.StreamReader
import scala.util.parsing.input.CharArrayReader

import java.io.File
import java.io.FileInputStream
import java.io.InputStreamReader
import java.io.FileReader
import java.io.FileWriter
import java.io.BufferedReader

import HLanguage._
import HParsers._
import Util._

object SuperCompilerApp {
  val help = """usage: hosc.SuperCompilerApp [-si sinput_file | -i input_file] -t tree_output_file -p program_output_file
  |Where:
  |sinput_file           path to input file where code is written using syntactic sugar
  |input_file            path to input file where code is written using standard syntax
  |tree_output_file      path to file where process tree will be placed (in SVG format)
  |program_output_file   path to file where residual program will be placed
  |""".stripMargin
  def main(args : Array[String]) : Unit = {
    var fileName: String = null
    var outFileName: String = null
    var outProgramFileName: String = null
    var sugared = false
    args.toList match {
      case "-i" :: input_file :: "-t" :: output_file :: "-p" :: output_file_1 :: Nil =>
        fileName = input_file
        outFileName = output_file
        outProgramFileName = output_file_1
        throw new IllegalArgumentException("Standard input is currently unsupported")
      case "-si" :: input_file :: "-t" :: output_file :: "-p" :: output_file_1 :: Nil =>
        fileName = input_file
        outFileName = output_file
        outProgramFileName = output_file_1
        sugared = true
      case "-help" :: Nil => 
        println(help)
        return
      case _ => 
        throw new IllegalArgumentException("run spcs.SuperCompilerApp -help for help")       
    }
    
    val program = programFromFile(fileName)
    val sc = new SuperCompiler(program)
    val pt = sc.buildProcessTree(program.goal)    
    val svg = new ProcessTreeSVG(pt).treeToSVG
    
    val svgFile = new java.io.File(outFileName)
    if (!svgFile.exists){
      svgFile.createNewFile()
    } 
    scala.xml.XML.save(outFileName, svg)
    
    val g = new ResidualProgramGenerator(pt)
    val p = g.generateProgram()
    val doc = p.toDoc
    val slFile = new java.io.File(outProgramFileName)
    if (!slFile.exists){
      slFile.createNewFile()
    }
    val fw = new FileWriter(slFile);
    doc.format(100, fw)
    fw.flush();
    fw.close();    
  }
}
