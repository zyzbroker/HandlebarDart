@JS()
library handlebars;

import "package:js/js.dart";

/// Type definitions for Handlebars v4.0.11
/// Project: http://handlebarsjs.com/
/// Definitions by: Boris Yankov <https://github.com/borisyankov>, Sergei Dorogin <https://github.com/evil-shrike>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// TypeScript Version: 2.3

// Module Handlebars
typedef String TemplateDelegate<T>(T context,
    [RuntimeOptions options]); /*export type Template<T = any> = TemplateDelegate<T>|string;*/

@anonymous
@JS()
abstract class RuntimeOptions {
  external bool get partial;
  external set partial(bool v);
  external List<dynamic> get depths;
  external set depths(List<dynamic> v);
  external dynamic /*JSMap of <String,Function>*/ get helpers;
  external set helpers(dynamic /*JSMap of <String,Function>*/ v);
  external dynamic /*JSMap of <String,TemplateDelegate<dynamic>>*/ get partials;
  external set partials(
      dynamic /*JSMap of <String,TemplateDelegate<dynamic>>*/ v);
  external dynamic /*JSMap of <String,Function>*/ get decorators;
  external set decorators(dynamic /*JSMap of <String,Function>*/ v);
  external dynamic get data;
  external set data(dynamic v);
  external List<dynamic> get blockParams;
  external set blockParams(List<dynamic> v);
  external factory RuntimeOptions(
      {bool partial,
      List<dynamic> depths,
      dynamic /*JSMap of <String,Function>*/ helpers,
      dynamic /*JSMap of <String,TemplateDelegate<dynamic>>*/ partials,
      dynamic /*JSMap of <String,Function>*/ decorators,
      dynamic data,
      List<dynamic> blockParams});
}

@anonymous
@JS()
abstract class HelperOptions {
  external TemplateDelegate get fn;
  external set fn(TemplateDelegate v);
  external TemplateDelegate get inverse;
  external set inverse(TemplateDelegate v);
  external dynamic get hash;
  external set hash(dynamic v);
  external dynamic get data;
  external set data(dynamic v);
  external factory HelperOptions(
      {TemplateDelegate fn,
      TemplateDelegate inverse,
      dynamic hash,
      dynamic data});
}

typedef dynamic HelperDelegate(
    [dynamic context,
    dynamic arg1,
    dynamic arg2,
    dynamic arg3,
    dynamic arg4,
    dynamic arg5,
    HelperOptions options]);

@anonymous
@JS()
abstract class HelperDeclareSpec {
  /* Index signature is not yet supported by JavaScript interop. */
}

/*external void registerHelper(String name, HelperDelegate fn);*/
/*external void registerHelper(HelperDeclareSpec name);*/
@JS("Handlebars.registerHelper")
external void registerHelper(dynamic /*String|HelperDeclareSpec*/ name,
    [HelperDelegate fn]);
@JS("Handlebars.unregisterHelper")
external void unregisterHelper(String name);
/*external void registerPartial(String name, TemplateDelegate<dynamic>|String fn);*/
/*external void registerPartial(JSMap of <String,TemplateDelegate<dynamic>> spec);*/
@JS("Handlebars.registerPartial")
external void registerPartial(
    dynamic /*String|JSMap of <String,TemplateDelegate<dynamic>>*/ name_spec,
    [dynamic /*TemplateDelegate<T>|String*/ fn]);
@JS("Handlebars.unregisterPartial")
external void unregisterPartial(String name);

/// TODO: replace Function with actual signature
@JS("Handlebars.registerDecorator")
external void registerDecorator(String name, Function fn);
@JS("Handlebars.unregisterDecorator")
external void unregisterDecorator(String name);
@JS("Handlebars.K")
external void K();
@JS("Handlebars.createFrame")
external dynamic createFrame(dynamic object);
@JS("Handlebars.blockParams")
external List<dynamic> blockParams(List<dynamic> obj, List<dynamic> ids);
@JS("Handlebars.Exception")
external void Exception(String message);
@JS("Handlebars.log")
external void log(num level, dynamic obj);
@JS("Handlebars.parse")
external ProgramObject parse(String input);
@JS("Handlebars.compile")
external TemplateDelegate<dynamic> compile(dynamic input,
    [CompileOptions options]);
@JS("Handlebars.precompile")
external TemplateSpecification precompile(dynamic input,
    [PrecompileOptions options]);
@JS("Handlebars.template")
external TemplateDelegate<dynamic> template(
    TemplateSpecification precompilation);
@JS("Handlebars.create")
external dynamic create();
@JS("Handlebars.escapeExpression")
external dynamic get escapeExpression;

/// export const Utils: typeof hbs.Utils;
@JS("Handlebars.logger")
external Logger get logger;
@JS("Handlebars.templates")
external HandlebarsTemplates get templates;
@JS("Handlebars.helpers")
external dynamic /*JSMap of <String,HelperDelegate>*/ get helpers;
@JS("Handlebars.partials")
external dynamic /*JSMap of <String,dynamic>*/ get partials;

@JS("Handlebars.decorators")
external dynamic /*JSMap of <String,Function>*/ get decorators;
@JS("Handlebars.noConflict")
external dynamic noConflict();

@JS("Handlebars.SafeString")
class SafeString {
  // @Ignore
  external factory SafeString(String str);
  external String toString();
  external String toHTML();
}

// Module Utils
@JS("Handlebars.Utils.escapeExpression")
external String Utils_escapeExpression(String str);
@JS("Handlebars.Utils.createFrame")
external dynamic Utils_createFrame(dynamic object);
@JS("Handlebars.Utils.blockParams")
external List<dynamic> Utils_blockParams(List<dynamic> obj, List<dynamic> ids);
@JS("Handlebars.Utils.isEmpty")
external bool isEmpty(dynamic obj);
@JS("Handlebars.Utils.extend")
external dynamic extend(dynamic obj,
    [dynamic source1,
    dynamic source2,
    dynamic source3,
    dynamic source4,
    dynamic source5]);
@JS("Handlebars.Utils.toString")
external String toString(dynamic obj);
@JS("Handlebars.Utils.isArray")
external bool isArray(dynamic obj);
@JS("Handlebars.Utils.isFunction")
external bool isFunction(dynamic obj);
// End module Utils

// Module AST
@JS("Handlebars.AST.helpers")
external AST_helpers get Handlebars_AST_helpers;


/// Implement this interface on your MVW/MVVM/MVC views such as Backbone.View
@anonymous
@JS()
abstract class HandlebarsTemplatable {
  external TemplateDelegate<dynamic> get template;
  external set template(TemplateDelegate<dynamic> v);
  external factory HandlebarsTemplatable({TemplateDelegate<dynamic> template});
}

/// NOTE: for backward compatibility of this typing
/*type HandlebarsTemplateDelegate<T = any> = Handlebars.TemplateDelegate<T>;*/
@anonymous
@JS()
abstract class HandlebarsTemplates {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class TemplateSpecification {}

/// for backward compatibility of this typing
/*type RuntimeOptions = Handlebars.RuntimeOptions;*/
@anonymous
@JS()
abstract class CompileOptions {
  external bool get data;
  external set data(bool v);
  external bool get compat;
  external set compat(bool v);
  external dynamic
      /*{
        helperMissing?: boolean;
        blockHelperMissing?: boolean;
        each?: boolean;
        if?: boolean;
        unless?: boolean;
        with?: boolean;
        log?: boolean;
        lookup?: boolean;
    }*/
      get knownHelpers;
  external set knownHelpers(
      dynamic /*{
        helperMissing?: boolean;
        blockHelperMissing?: boolean;
        each?: boolean;
        if?: boolean;
        unless?: boolean;
        with?: boolean;
        log?: boolean;
        lookup?: boolean;
    }*/
      v);
  external bool get knownHelpersOnly;
  external set knownHelpersOnly(bool v);
  external bool get noEscape;
  external set noEscape(bool v);
  external bool get strict;
  external set strict(bool v);
  external bool get assumeObjects;
  external set assumeObjects(bool v);
  external bool get preventIndent;
  external set preventIndent(bool v);
  external bool get ignoreStandalone;
  external set ignoreStandalone(bool v);
  external bool get explicitPartialContext;
  external set explicitPartialContext(bool v);
  external factory CompileOptions(
      {bool data,
      bool compat,
      dynamic /*{
        helperMissing?: boolean;
        blockHelperMissing?: boolean;
        each?: boolean;
        if?: boolean;
        unless?: boolean;
        with?: boolean;
        log?: boolean;
        lookup?: boolean;
    }*/
      knownHelpers,
      bool knownHelpersOnly,
      bool noEscape,
      bool strict,
      bool assumeObjects,
      bool preventIndent,
      bool ignoreStandalone,
      bool explicitPartialContext});
}

@anonymous
@JS()
abstract class PrecompileOptions implements CompileOptions {
  external String get srcName;
  external set srcName(String v);
  external String get destName;
  external set destName(String v);
  external factory PrecompileOptions(
      {String srcName,
      String destName,
      bool data,
      bool compat,
      dynamic /*{
        helperMissing?: boolean;
        blockHelperMissing?: boolean;
        each?: boolean;
        if?: boolean;
        unless?: boolean;
        with?: boolean;
        log?: boolean;
        lookup?: boolean;
    }*/
      knownHelpers,
      bool knownHelpersOnly,
      bool noEscape,
      bool strict,
      bool assumeObjects,
      bool preventIndent,
      bool ignoreStandalone,
      bool explicitPartialContext});
}

// Module hbs
/// for backward compatibility of this typing
/*type SafeString = Handlebars.SafeString;*/
/*type Utils = typeof Handlebars.Utils;*/

// Module AST
@anonymous
@JS()
abstract class Node {
  external String get type;
  external set type(String v);
  external SourceLocation get loc;
  external set loc(SourceLocation v);
  external factory Node({String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class SourceLocation {
  external String get source;
  external set source(String v);
  external Position get start;
  external set start(Position v);
  external Position get end;
  external set end(Position v);
  external factory SourceLocation(
      {String source, Position start, Position end});
}

@anonymous
@JS()
abstract class Position {
  external num get line;
  external set line(num v);
  external num get column;
  external set column(num v);
  external factory Position({num line, num column});
}

@anonymous
@JS()
abstract class ProgramObject implements Node {
  external List<Statement> get body;
  external set body(List<Statement> v);
  external List<String> get blockParams;
  external set blockParams(List<String> v);
  external factory ProgramObject(
      {List<Statement> body,
      List<String> blockParams,
      String type,
      SourceLocation loc});
}

@anonymous
@JS()
abstract class Statement implements Node {
  external factory Statement({String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class MustacheStatementObject implements Statement {
  external dynamic /*PathExpressionObject|Literal*/ get path;
  external set path(dynamic /*PathExpressionObject|Literal*/ v);
  external List<Expression> get params;
  external set params(List<Expression> v);
  external HashObject get hash;
  external set hash(HashObject v);
  external bool get escaped;
  external set escaped(bool v);
  external StripFlags get strip;
  external set strip(StripFlags v);
  external factory MustacheStatementObject(
      {dynamic /*PathExpressionObject|Literal*/ path,
      List<Expression> params,
      HashObject hash,
      bool escaped,
      StripFlags strip,
      String type,
      SourceLocation loc});
}

@anonymous
@JS()
abstract class DecoratorObject implements MustacheStatementObject {
  external factory DecoratorObject(
      {dynamic /*PathExpressionObject|Literal*/ path,
      List<Expression> params,
      HashObject hash,
      bool escaped,
      StripFlags strip,
      String type,
      SourceLocation loc});
}

@anonymous
@JS()
abstract class BlockStatementObject implements Statement {
  external PathExpressionObject get path;
  external set path(PathExpressionObject v);
  external List<Expression> get params;
  external set params(List<Expression> v);
  external HashObject get hash;
  external set hash(HashObject v);
  external ProgramObject get program;
  external set program(ProgramObject v);
  external ProgramObject get inverse;
  external set inverse(ProgramObject v);
  external StripFlags get openStrip;
  external set openStrip(StripFlags v);
  external StripFlags get inverseStrip;
  external set inverseStrip(StripFlags v);
  external StripFlags get closeStrip;
  external set closeStrip(StripFlags v);
  external factory BlockStatementObject(
      {PathExpressionObject path,
      List<Expression> params,
      HashObject hash,
      ProgramObject program,
      ProgramObject inverse,
      StripFlags openStrip,
      StripFlags inverseStrip,
      StripFlags closeStrip,
      String type,
      SourceLocation loc});
}

@anonymous
@JS()
abstract class DecoratorBlockObject implements BlockStatementObject {
  external factory DecoratorBlockObject(
      {PathExpressionObject path,
      List<Expression> params,
      HashObject hash,
      ProgramObject program,
      ProgramObject inverse,
      StripFlags openStrip,
      StripFlags inverseStrip,
      StripFlags closeStrip,
      String type,
      SourceLocation loc});
}

@anonymous
@JS()
abstract class PartialStatementObject implements Statement {
  external dynamic /*PathExpressionObject|SubExpressionObject*/ get name;
  external set name(dynamic /*PathExpressionObject|SubExpressionObject*/ v);
  external List<Expression> get params;
  external set params(List<Expression> v);
  external HashObject get hash;
  external set hash(HashObject v);
  external String get indent;
  external set indent(String v);
  external StripFlags get strip;
  external set strip(StripFlags v);
  external factory PartialStatementObject(
      {dynamic /*PathExpressionObject|SubExpressionObject*/ name,
      List<Expression> params,
      HashObject hash,
      String indent,
      StripFlags strip,
      String type,
      SourceLocation loc});
}

@anonymous
@JS()
abstract class PartialBlockStatementObject implements Statement {
  external dynamic /*PathExpressionObject|SubExpressionObject*/ get name;
  external set name(dynamic /*PathExpressionObject|SubExpressionObject*/ v);
  external List<Expression> get params;
  external set params(List<Expression> v);
  external HashObject get hash;
  external set hash(HashObject v);
  external ProgramObject get program;
  external set program(ProgramObject v);
  external StripFlags get openStrip;
  external set openStrip(StripFlags v);
  external StripFlags get closeStrip;
  external set closeStrip(StripFlags v);
  external factory PartialBlockStatementObject(
      {dynamic /*PathExpressionObject|SubExpressionObject*/ name,
      List<Expression> params,
      HashObject hash,
      ProgramObject program,
      StripFlags openStrip,
      StripFlags closeStrip,
      String type,
      SourceLocation loc});
}

@anonymous
@JS()
abstract class ContentStatementObject implements Statement {
  external String get value;
  external set value(String v);
  external StripFlags get original;
  external set original(StripFlags v);
  external factory ContentStatementObject(
      {String value, StripFlags original, String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class CommentStatementObject implements Statement {
  external String get value;
  external set value(String v);
  external StripFlags get strip;
  external set strip(StripFlags v);
  external factory CommentStatementObject(
      {String value, StripFlags strip, String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class Expression implements Node {
  external factory Expression({String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class SubExpressionObject implements Expression {
  external PathExpressionObject get path;
  external set path(PathExpressionObject v);
  external List<Expression> get params;
  external set params(List<Expression> v);
  external HashObject get hash;
  external set hash(HashObject v);
  external factory SubExpressionObject(
      {PathExpressionObject path,
      List<Expression> params,
      HashObject hash,
      String type,
      SourceLocation loc});
}

@anonymous
@JS()
abstract class PathExpressionObject implements Expression {
  external bool get data;
  external set data(bool v);
  external num get depth;
  external set depth(num v);
  external List<String> get parts;
  external set parts(List<String> v);
  external String get original;
  external set original(String v);
  external factory PathExpressionObject(
      {bool data,
      num depth,
      List<String> parts,
      String original,
      String type,
      SourceLocation loc});
}

@anonymous
@JS()
abstract class Literal implements Expression {
  external factory Literal({String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class StringLiteralObject implements Literal {
  external String get value;
  external set value(String v);
  external String get original;
  external set original(String v);
  external factory StringLiteralObject(
      {String value, String original, String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class BooleanLiteralObject implements Literal {
  external bool get value;
  external set value(bool v);
  external bool get original;
  external set original(bool v);
  external factory BooleanLiteralObject(
      {bool value, bool original, String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class NumberLiteralObject implements Literal {
  external num get value;
  external set value(num v);
  external num get original;
  external set original(num v);
  external factory NumberLiteralObject(
      {num value, num original, String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class UndefinedLiteral implements Literal {
  external factory UndefinedLiteral({String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class NullLiteral implements Literal {
  external factory NullLiteral({String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class HashObject implements Node {
  external List<HashPair> get pairs;
  external set pairs(List<HashPair> v);
  external factory HashObject(
      {List<HashPair> pairs, String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class HashPair implements Node {
  external String get key;
  external set key(String v);
  external Expression get value;
  external set value(Expression v);
  external factory HashPair(
      {String key, Expression value, String type, SourceLocation loc});
}

@anonymous
@JS()
abstract class StripFlags {
  external bool get open;
  external set open(bool v);
  external bool get close;
  external set close(bool v);
  external factory StripFlags({bool open, bool close});
}

@anonymous
@JS()
abstract class AST_helpers {
  external bool helperExpression(Node node);
  external bool scopeId(PathExpressionObject path);
  external bool simpleId(PathExpressionObject path);
}

// End module AST

// End module AST
@anonymous
@JS()
abstract class ICompiler {
  external void accept(Node node);
  external void Program(ProgramObject program);
  external void BlockStatement(BlockStatementObject block);
  external void PartialStatement(PartialStatementObject partial);
  external void PartialBlockStatement(PartialBlockStatementObject partial);
  external void DecoratorBlock(DecoratorBlockObject decorator);
  external void Decorator(DecoratorObject decorator);
  external void MustacheStatement(MustacheStatementObject mustache);
  external void ContentStatement(ContentStatementObject content);
  external void CommentStatement([CommentStatementObject comment]);
  external void SubExpression(SubExpressionObject sexpr);
  external void PathExpression(PathExpressionObject path);
  external void StringLiteral(StringLiteralObject str);
  external void NumberLiteral(NumberLiteralObject num);
  external void BooleanLiteral(BooleanLiteralObject bool);
  external void UndefinedLiteral();
  external void NullLiteral();
  external void Hash(HashObject hash);
}

@JS("Handlebars.Visitor")
class Visitor implements ICompiler {
  // @Ignore
  external void accept(Node node);
  external void acceptKey(Node node, String name);
  external void acceptArray(List<Expression> arr);
  external void Program(ProgramObject program);
  external void BlockStatement(BlockStatementObject block);
  external void PartialStatement(PartialStatementObject partial);
  external void PartialBlockStatement(PartialBlockStatementObject partial);
  external void DecoratorBlock(DecoratorBlockObject decorator);
  external void Decorator(DecoratorObject decorator);
  external void MustacheStatement(MustacheStatementObject mustache);
  external void ContentStatement(ContentStatementObject content);
  external void CommentStatement([CommentStatementObject comment]);
  external void SubExpression(SubExpressionObject sexpr);
  external void PathExpression(PathExpressionObject path);
  external void StringLiteral(StringLiteralObject str);
  external void NumberLiteral(NumberLiteralObject num);
  external void BooleanLiteral(BooleanLiteralObject bool);
  external void UndefinedLiteral();
  external void NullLiteral();
  external void Hash(HashObject hash);
}

// End module Handlebars

// End module hbs
@anonymous
@JS()
abstract class Logger {
  external num get DEBUG;
  external set DEBUG(num v);
  external num get INFO;
  external set INFO(num v);
  external num get WARN;
  external set WARN(num v);
  external num get ERROR;
  external set ERROR(num v);
  external num get level;
  external set level(num v);
  external dynamic /*JSMap of <num,String>*/ get methodMap;
  external set methodMap(dynamic /*JSMap of <num,String>*/ v);
  external void log(num level, String obj);
}

// Module handlebars
/* WARNING: export assignment not yet supported. */

// End module handlebars

// Module handlebars/runtime
/* WARNING: export assignment not yet supported. */

// End module handlebars/runtime
