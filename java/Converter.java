// To use this code, add the following Maven dependency to your project:
//
//     com.fasterxml.jackson.core : jackson-databind : 2.9.0
//
// Import this package:
//
//     import io.quicktype.Converter;
//
// Then you can deserialize a JSON string with
//
//     FrameOffset data = Converter.FrameOffsetFromJsonString(jsonString);
//     Vector data = Converter.VectorFromJsonString(jsonString);
//     Color data = Converter.ColorFromJsonString(jsonString);
//     ColorStop data = Converter.ColorStopFromJsonString(jsonString);
//     LayoutConstraint data = Converter.LayoutConstraintFromJsonString(jsonString);
//     User data = Converter.UserFromJsonString(jsonString);
//     Text data = Converter.TextFromJsonString(jsonString);
//     Frame data = Converter.FrameFromJsonString(jsonString);
//     Rectangle data = Converter.RectangleFromJsonString(jsonString);
//     Vector2 data = Converter.Vector2FromJsonString(jsonString);
//     LayoutGrid data = Converter.LayoutGridFromJsonString(jsonString);
//     String[] data = Converter.StringFromJsonString(jsonString);
//     Effect data = Converter.EffectFromJsonString(jsonString);
//     Slice data = Converter.SliceFromJsonString(jsonString);
//     Star data = Converter.StarFromJsonString(jsonString);
//     Line data = Converter.LineFromJsonString(jsonString);
//     BlendMode data = Converter.BlendModeFromJsonString(jsonString);
//     Instance data = Converter.InstanceFromJsonString(jsonString);
//     CommentsResponse data = Converter.CommentsResponseFromJsonString(jsonString);
//     TypeStyle data = Converter.TypeStyleFromJsonString(jsonString);
//     BooleanGroup data = Converter.BooleanGroupFromJsonString(jsonString);
//     Canvas data = Converter.CanvasFromJsonString(jsonString);
//     Document data = Converter.DocumentFromJsonString(jsonString);
//     NodeType data = Converter.NodeTypeFromJsonString(jsonString);
//     ExportSetting data = Converter.ExportSettingFromJsonString(jsonString);
//     Component data = Converter.ComponentFromJsonString(jsonString);
//     FileResponse data = Converter.FileResponseFromJsonString(jsonString);
//     Constraint data = Converter.ConstraintFromJsonString(jsonString);
//     Paint data = Converter.PaintFromJsonString(jsonString);
//     RegularPolygon data = Converter.RegularPolygonFromJsonString(jsonString);
//     Ellipse data = Converter.EllipseFromJsonString(jsonString);
//     Comment data = Converter.CommentFromJsonString(jsonString);
//     Group data = Converter.GroupFromJsonString(jsonString);

package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.core.JsonProcessingException;

public class Converter {
    // Serialize/deserialize helpers

    public static FrameOffset FrameOffsetFromJsonString(String json) throws IOException {
        return getFrameOffsetObjectReader().readValue(json);
    }

    public static String FrameOffsetToJsonString(FrameOffset obj) throws JsonProcessingException {
        return getFrameOffsetObjectWriter().writeValueAsString(obj);
    }

    public static Vector VectorFromJsonString(String json) throws IOException {
        return getVectorObjectReader().readValue(json);
    }

    public static String VectorToJsonString(Vector obj) throws JsonProcessingException {
        return getVectorObjectWriter().writeValueAsString(obj);
    }

    public static Color ColorFromJsonString(String json) throws IOException {
        return getColorObjectReader().readValue(json);
    }

    public static String ColorToJsonString(Color obj) throws JsonProcessingException {
        return getColorObjectWriter().writeValueAsString(obj);
    }

    public static ColorStop ColorStopFromJsonString(String json) throws IOException {
        return getColorStopObjectReader().readValue(json);
    }

    public static String ColorStopToJsonString(ColorStop obj) throws JsonProcessingException {
        return getColorStopObjectWriter().writeValueAsString(obj);
    }

    public static LayoutConstraint LayoutConstraintFromJsonString(String json) throws IOException {
        return getLayoutConstraintObjectReader().readValue(json);
    }

    public static String LayoutConstraintToJsonString(LayoutConstraint obj) throws JsonProcessingException {
        return getLayoutConstraintObjectWriter().writeValueAsString(obj);
    }

    public static User UserFromJsonString(String json) throws IOException {
        return getUserObjectReader().readValue(json);
    }

    public static String UserToJsonString(User obj) throws JsonProcessingException {
        return getUserObjectWriter().writeValueAsString(obj);
    }

    public static Text TextFromJsonString(String json) throws IOException {
        return getTextObjectReader().readValue(json);
    }

    public static String TextToJsonString(Text obj) throws JsonProcessingException {
        return getTextObjectWriter().writeValueAsString(obj);
    }

    public static Frame FrameFromJsonString(String json) throws IOException {
        return getFrameObjectReader().readValue(json);
    }

    public static String FrameToJsonString(Frame obj) throws JsonProcessingException {
        return getFrameObjectWriter().writeValueAsString(obj);
    }

    public static Rectangle RectangleFromJsonString(String json) throws IOException {
        return getRectangleObjectReader().readValue(json);
    }

    public static String RectangleToJsonString(Rectangle obj) throws JsonProcessingException {
        return getRectangleObjectWriter().writeValueAsString(obj);
    }

    public static Vector2 Vector2FromJsonString(String json) throws IOException {
        return getVector2ObjectReader().readValue(json);
    }

    public static String Vector2ToJsonString(Vector2 obj) throws JsonProcessingException {
        return getVector2ObjectWriter().writeValueAsString(obj);
    }

    public static LayoutGrid LayoutGridFromJsonString(String json) throws IOException {
        return getLayoutGridObjectReader().readValue(json);
    }

    public static String LayoutGridToJsonString(LayoutGrid obj) throws JsonProcessingException {
        return getLayoutGridObjectWriter().writeValueAsString(obj);
    }

    public static String[] StringFromJsonString(String json) throws IOException {
        return getStringObjectReader().readValue(json);
    }

    public static String StringToJsonString(String[] obj) throws JsonProcessingException {
        return getStringObjectWriter().writeValueAsString(obj);
    }

    public static Effect EffectFromJsonString(String json) throws IOException {
        return getEffectObjectReader().readValue(json);
    }

    public static String EffectToJsonString(Effect obj) throws JsonProcessingException {
        return getEffectObjectWriter().writeValueAsString(obj);
    }

    public static Slice SliceFromJsonString(String json) throws IOException {
        return getSliceObjectReader().readValue(json);
    }

    public static String SliceToJsonString(Slice obj) throws JsonProcessingException {
        return getSliceObjectWriter().writeValueAsString(obj);
    }

    public static Star StarFromJsonString(String json) throws IOException {
        return getStarObjectReader().readValue(json);
    }

    public static String StarToJsonString(Star obj) throws JsonProcessingException {
        return getStarObjectWriter().writeValueAsString(obj);
    }

    public static Line LineFromJsonString(String json) throws IOException {
        return getLineObjectReader().readValue(json);
    }

    public static String LineToJsonString(Line obj) throws JsonProcessingException {
        return getLineObjectWriter().writeValueAsString(obj);
    }

    public static BlendMode BlendModeFromJsonString(String json) throws IOException {
        return getBlendModeObjectReader().readValue(json);
    }

    public static String BlendModeToJsonString(BlendMode obj) throws JsonProcessingException {
        return getBlendModeObjectWriter().writeValueAsString(obj);
    }

    public static Instance InstanceFromJsonString(String json) throws IOException {
        return getInstanceObjectReader().readValue(json);
    }

    public static String InstanceToJsonString(Instance obj) throws JsonProcessingException {
        return getInstanceObjectWriter().writeValueAsString(obj);
    }

    public static CommentsResponse CommentsResponseFromJsonString(String json) throws IOException {
        return getCommentsResponseObjectReader().readValue(json);
    }

    public static String CommentsResponseToJsonString(CommentsResponse obj) throws JsonProcessingException {
        return getCommentsResponseObjectWriter().writeValueAsString(obj);
    }

    public static TypeStyle TypeStyleFromJsonString(String json) throws IOException {
        return getTypeStyleObjectReader().readValue(json);
    }

    public static String TypeStyleToJsonString(TypeStyle obj) throws JsonProcessingException {
        return getTypeStyleObjectWriter().writeValueAsString(obj);
    }

    public static BooleanGroup BooleanGroupFromJsonString(String json) throws IOException {
        return getBooleanGroupObjectReader().readValue(json);
    }

    public static String BooleanGroupToJsonString(BooleanGroup obj) throws JsonProcessingException {
        return getBooleanGroupObjectWriter().writeValueAsString(obj);
    }

    public static Canvas CanvasFromJsonString(String json) throws IOException {
        return getCanvasObjectReader().readValue(json);
    }

    public static String CanvasToJsonString(Canvas obj) throws JsonProcessingException {
        return getCanvasObjectWriter().writeValueAsString(obj);
    }

    public static Document DocumentFromJsonString(String json) throws IOException {
        return getDocumentObjectReader().readValue(json);
    }

    public static String DocumentToJsonString(Document obj) throws JsonProcessingException {
        return getDocumentObjectWriter().writeValueAsString(obj);
    }

    public static NodeType NodeTypeFromJsonString(String json) throws IOException {
        return getNodeTypeObjectReader().readValue(json);
    }

    public static String NodeTypeToJsonString(NodeType obj) throws JsonProcessingException {
        return getNodeTypeObjectWriter().writeValueAsString(obj);
    }

    public static ExportSetting ExportSettingFromJsonString(String json) throws IOException {
        return getExportSettingObjectReader().readValue(json);
    }

    public static String ExportSettingToJsonString(ExportSetting obj) throws JsonProcessingException {
        return getExportSettingObjectWriter().writeValueAsString(obj);
    }

    public static Component ComponentFromJsonString(String json) throws IOException {
        return getComponentObjectReader().readValue(json);
    }

    public static String ComponentToJsonString(Component obj) throws JsonProcessingException {
        return getComponentObjectWriter().writeValueAsString(obj);
    }

    public static FileResponse FileResponseFromJsonString(String json) throws IOException {
        return getFileResponseObjectReader().readValue(json);
    }

    public static String FileResponseToJsonString(FileResponse obj) throws JsonProcessingException {
        return getFileResponseObjectWriter().writeValueAsString(obj);
    }

    public static Constraint ConstraintFromJsonString(String json) throws IOException {
        return getConstraintObjectReader().readValue(json);
    }

    public static String ConstraintToJsonString(Constraint obj) throws JsonProcessingException {
        return getConstraintObjectWriter().writeValueAsString(obj);
    }

    public static Paint PaintFromJsonString(String json) throws IOException {
        return getPaintObjectReader().readValue(json);
    }

    public static String PaintToJsonString(Paint obj) throws JsonProcessingException {
        return getPaintObjectWriter().writeValueAsString(obj);
    }

    public static RegularPolygon RegularPolygonFromJsonString(String json) throws IOException {
        return getRegularPolygonObjectReader().readValue(json);
    }

    public static String RegularPolygonToJsonString(RegularPolygon obj) throws JsonProcessingException {
        return getRegularPolygonObjectWriter().writeValueAsString(obj);
    }

    public static Ellipse EllipseFromJsonString(String json) throws IOException {
        return getEllipseObjectReader().readValue(json);
    }

    public static String EllipseToJsonString(Ellipse obj) throws JsonProcessingException {
        return getEllipseObjectWriter().writeValueAsString(obj);
    }

    public static Comment CommentFromJsonString(String json) throws IOException {
        return getCommentObjectReader().readValue(json);
    }

    public static String CommentToJsonString(Comment obj) throws JsonProcessingException {
        return getCommentObjectWriter().writeValueAsString(obj);
    }

    public static Group GroupFromJsonString(String json) throws IOException {
        return getGroupObjectReader().readValue(json);
    }

    public static String GroupToJsonString(Group obj) throws JsonProcessingException {
        return getGroupObjectWriter().writeValueAsString(obj);
    }

    private static ObjectReader FrameOffsetReader;
    private static ObjectWriter FrameOffsetWriter;

    private static void instantiateFrameOffsetMapper() {
        ObjectMapper mapper = new ObjectMapper();
        FrameOffsetReader = mapper.reader(FrameOffset.class);
        FrameOffsetWriter = mapper.writerFor(FrameOffset.class);
    }

    private static ObjectReader getFrameOffsetObjectReader() {
        if (FrameOffsetReader == null) instantiateMapper();
        return FrameOffsetReader;
    }

    private static ObjectWriter getFrameOffsetObjectWriter() {
        if (FrameOffsetWriter == null) instantiateMapper();
        return FrameOffsetWriter;
    }

    private static ObjectReader VectorReader;
    private static ObjectWriter VectorWriter;

    private static void instantiateVectorMapper() {
        ObjectMapper mapper = new ObjectMapper();
        VectorReader = mapper.reader(Vector.class);
        VectorWriter = mapper.writerFor(Vector.class);
    }

    private static ObjectReader getVectorObjectReader() {
        if (VectorReader == null) instantiateMapper();
        return VectorReader;
    }

    private static ObjectWriter getVectorObjectWriter() {
        if (VectorWriter == null) instantiateMapper();
        return VectorWriter;
    }

    private static ObjectReader ColorReader;
    private static ObjectWriter ColorWriter;

    private static void instantiateColorMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ColorReader = mapper.reader(Color.class);
        ColorWriter = mapper.writerFor(Color.class);
    }

    private static ObjectReader getColorObjectReader() {
        if (ColorReader == null) instantiateMapper();
        return ColorReader;
    }

    private static ObjectWriter getColorObjectWriter() {
        if (ColorWriter == null) instantiateMapper();
        return ColorWriter;
    }

    private static ObjectReader ColorStopReader;
    private static ObjectWriter ColorStopWriter;

    private static void instantiateColorStopMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ColorStopReader = mapper.reader(ColorStop.class);
        ColorStopWriter = mapper.writerFor(ColorStop.class);
    }

    private static ObjectReader getColorStopObjectReader() {
        if (ColorStopReader == null) instantiateMapper();
        return ColorStopReader;
    }

    private static ObjectWriter getColorStopObjectWriter() {
        if (ColorStopWriter == null) instantiateMapper();
        return ColorStopWriter;
    }

    private static ObjectReader LayoutConstraintReader;
    private static ObjectWriter LayoutConstraintWriter;

    private static void instantiateLayoutConstraintMapper() {
        ObjectMapper mapper = new ObjectMapper();
        LayoutConstraintReader = mapper.reader(LayoutConstraint.class);
        LayoutConstraintWriter = mapper.writerFor(LayoutConstraint.class);
    }

    private static ObjectReader getLayoutConstraintObjectReader() {
        if (LayoutConstraintReader == null) instantiateMapper();
        return LayoutConstraintReader;
    }

    private static ObjectWriter getLayoutConstraintObjectWriter() {
        if (LayoutConstraintWriter == null) instantiateMapper();
        return LayoutConstraintWriter;
    }

    private static ObjectReader UserReader;
    private static ObjectWriter UserWriter;

    private static void instantiateUserMapper() {
        ObjectMapper mapper = new ObjectMapper();
        UserReader = mapper.reader(User.class);
        UserWriter = mapper.writerFor(User.class);
    }

    private static ObjectReader getUserObjectReader() {
        if (UserReader == null) instantiateMapper();
        return UserReader;
    }

    private static ObjectWriter getUserObjectWriter() {
        if (UserWriter == null) instantiateMapper();
        return UserWriter;
    }

    private static ObjectReader TextReader;
    private static ObjectWriter TextWriter;

    private static void instantiateTextMapper() {
        ObjectMapper mapper = new ObjectMapper();
        TextReader = mapper.reader(Text.class);
        TextWriter = mapper.writerFor(Text.class);
    }

    private static ObjectReader getTextObjectReader() {
        if (TextReader == null) instantiateMapper();
        return TextReader;
    }

    private static ObjectWriter getTextObjectWriter() {
        if (TextWriter == null) instantiateMapper();
        return TextWriter;
    }

    private static ObjectReader FrameReader;
    private static ObjectWriter FrameWriter;

    private static void instantiateFrameMapper() {
        ObjectMapper mapper = new ObjectMapper();
        FrameReader = mapper.reader(Frame.class);
        FrameWriter = mapper.writerFor(Frame.class);
    }

    private static ObjectReader getFrameObjectReader() {
        if (FrameReader == null) instantiateMapper();
        return FrameReader;
    }

    private static ObjectWriter getFrameObjectWriter() {
        if (FrameWriter == null) instantiateMapper();
        return FrameWriter;
    }

    private static ObjectReader RectangleReader;
    private static ObjectWriter RectangleWriter;

    private static void instantiateRectangleMapper() {
        ObjectMapper mapper = new ObjectMapper();
        RectangleReader = mapper.reader(Rectangle.class);
        RectangleWriter = mapper.writerFor(Rectangle.class);
    }

    private static ObjectReader getRectangleObjectReader() {
        if (RectangleReader == null) instantiateMapper();
        return RectangleReader;
    }

    private static ObjectWriter getRectangleObjectWriter() {
        if (RectangleWriter == null) instantiateMapper();
        return RectangleWriter;
    }

    private static ObjectReader Vector2Reader;
    private static ObjectWriter Vector2Writer;

    private static void instantiateVector2Mapper() {
        ObjectMapper mapper = new ObjectMapper();
        Vector2Reader = mapper.reader(Vector2.class);
        Vector2Writer = mapper.writerFor(Vector2.class);
    }

    private static ObjectReader getVector2ObjectReader() {
        if (Vector2Reader == null) instantiateMapper();
        return Vector2Reader;
    }

    private static ObjectWriter getVector2ObjectWriter() {
        if (Vector2Writer == null) instantiateMapper();
        return Vector2Writer;
    }

    private static ObjectReader LayoutGridReader;
    private static ObjectWriter LayoutGridWriter;

    private static void instantiateLayoutGridMapper() {
        ObjectMapper mapper = new ObjectMapper();
        LayoutGridReader = mapper.reader(LayoutGrid.class);
        LayoutGridWriter = mapper.writerFor(LayoutGrid.class);
    }

    private static ObjectReader getLayoutGridObjectReader() {
        if (LayoutGridReader == null) instantiateMapper();
        return LayoutGridReader;
    }

    private static ObjectWriter getLayoutGridObjectWriter() {
        if (LayoutGridWriter == null) instantiateMapper();
        return LayoutGridWriter;
    }

    private static ObjectReader StringReader;
    private static ObjectWriter StringWriter;

    private static void instantiateStringMapper() {
        ObjectMapper mapper = new ObjectMapper();
        StringReader = mapper.reader(String[].class);
        StringWriter = mapper.writerFor(String[].class);
    }

    private static ObjectReader getStringObjectReader() {
        if (StringReader == null) instantiateMapper();
        return StringReader;
    }

    private static ObjectWriter getStringObjectWriter() {
        if (StringWriter == null) instantiateMapper();
        return StringWriter;
    }

    private static ObjectReader EffectReader;
    private static ObjectWriter EffectWriter;

    private static void instantiateEffectMapper() {
        ObjectMapper mapper = new ObjectMapper();
        EffectReader = mapper.reader(Effect.class);
        EffectWriter = mapper.writerFor(Effect.class);
    }

    private static ObjectReader getEffectObjectReader() {
        if (EffectReader == null) instantiateMapper();
        return EffectReader;
    }

    private static ObjectWriter getEffectObjectWriter() {
        if (EffectWriter == null) instantiateMapper();
        return EffectWriter;
    }

    private static ObjectReader SliceReader;
    private static ObjectWriter SliceWriter;

    private static void instantiateSliceMapper() {
        ObjectMapper mapper = new ObjectMapper();
        SliceReader = mapper.reader(Slice.class);
        SliceWriter = mapper.writerFor(Slice.class);
    }

    private static ObjectReader getSliceObjectReader() {
        if (SliceReader == null) instantiateMapper();
        return SliceReader;
    }

    private static ObjectWriter getSliceObjectWriter() {
        if (SliceWriter == null) instantiateMapper();
        return SliceWriter;
    }

    private static ObjectReader StarReader;
    private static ObjectWriter StarWriter;

    private static void instantiateStarMapper() {
        ObjectMapper mapper = new ObjectMapper();
        StarReader = mapper.reader(Star.class);
        StarWriter = mapper.writerFor(Star.class);
    }

    private static ObjectReader getStarObjectReader() {
        if (StarReader == null) instantiateMapper();
        return StarReader;
    }

    private static ObjectWriter getStarObjectWriter() {
        if (StarWriter == null) instantiateMapper();
        return StarWriter;
    }

    private static ObjectReader LineReader;
    private static ObjectWriter LineWriter;

    private static void instantiateLineMapper() {
        ObjectMapper mapper = new ObjectMapper();
        LineReader = mapper.reader(Line.class);
        LineWriter = mapper.writerFor(Line.class);
    }

    private static ObjectReader getLineObjectReader() {
        if (LineReader == null) instantiateMapper();
        return LineReader;
    }

    private static ObjectWriter getLineObjectWriter() {
        if (LineWriter == null) instantiateMapper();
        return LineWriter;
    }

    private static ObjectReader BlendModeReader;
    private static ObjectWriter BlendModeWriter;

    private static void instantiateBlendModeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        BlendModeReader = mapper.reader(BlendMode.class);
        BlendModeWriter = mapper.writerFor(BlendMode.class);
    }

    private static ObjectReader getBlendModeObjectReader() {
        if (BlendModeReader == null) instantiateMapper();
        return BlendModeReader;
    }

    private static ObjectWriter getBlendModeObjectWriter() {
        if (BlendModeWriter == null) instantiateMapper();
        return BlendModeWriter;
    }

    private static ObjectReader InstanceReader;
    private static ObjectWriter InstanceWriter;

    private static void instantiateInstanceMapper() {
        ObjectMapper mapper = new ObjectMapper();
        InstanceReader = mapper.reader(Instance.class);
        InstanceWriter = mapper.writerFor(Instance.class);
    }

    private static ObjectReader getInstanceObjectReader() {
        if (InstanceReader == null) instantiateMapper();
        return InstanceReader;
    }

    private static ObjectWriter getInstanceObjectWriter() {
        if (InstanceWriter == null) instantiateMapper();
        return InstanceWriter;
    }

    private static ObjectReader CommentsResponseReader;
    private static ObjectWriter CommentsResponseWriter;

    private static void instantiateCommentsResponseMapper() {
        ObjectMapper mapper = new ObjectMapper();
        CommentsResponseReader = mapper.reader(CommentsResponse.class);
        CommentsResponseWriter = mapper.writerFor(CommentsResponse.class);
    }

    private static ObjectReader getCommentsResponseObjectReader() {
        if (CommentsResponseReader == null) instantiateMapper();
        return CommentsResponseReader;
    }

    private static ObjectWriter getCommentsResponseObjectWriter() {
        if (CommentsResponseWriter == null) instantiateMapper();
        return CommentsResponseWriter;
    }

    private static ObjectReader TypeStyleReader;
    private static ObjectWriter TypeStyleWriter;

    private static void instantiateTypeStyleMapper() {
        ObjectMapper mapper = new ObjectMapper();
        TypeStyleReader = mapper.reader(TypeStyle.class);
        TypeStyleWriter = mapper.writerFor(TypeStyle.class);
    }

    private static ObjectReader getTypeStyleObjectReader() {
        if (TypeStyleReader == null) instantiateMapper();
        return TypeStyleReader;
    }

    private static ObjectWriter getTypeStyleObjectWriter() {
        if (TypeStyleWriter == null) instantiateMapper();
        return TypeStyleWriter;
    }

    private static ObjectReader BooleanGroupReader;
    private static ObjectWriter BooleanGroupWriter;

    private static void instantiateBooleanGroupMapper() {
        ObjectMapper mapper = new ObjectMapper();
        BooleanGroupReader = mapper.reader(BooleanGroup.class);
        BooleanGroupWriter = mapper.writerFor(BooleanGroup.class);
    }

    private static ObjectReader getBooleanGroupObjectReader() {
        if (BooleanGroupReader == null) instantiateMapper();
        return BooleanGroupReader;
    }

    private static ObjectWriter getBooleanGroupObjectWriter() {
        if (BooleanGroupWriter == null) instantiateMapper();
        return BooleanGroupWriter;
    }

    private static ObjectReader CanvasReader;
    private static ObjectWriter CanvasWriter;

    private static void instantiateCanvasMapper() {
        ObjectMapper mapper = new ObjectMapper();
        CanvasReader = mapper.reader(Canvas.class);
        CanvasWriter = mapper.writerFor(Canvas.class);
    }

    private static ObjectReader getCanvasObjectReader() {
        if (CanvasReader == null) instantiateMapper();
        return CanvasReader;
    }

    private static ObjectWriter getCanvasObjectWriter() {
        if (CanvasWriter == null) instantiateMapper();
        return CanvasWriter;
    }

    private static ObjectReader DocumentReader;
    private static ObjectWriter DocumentWriter;

    private static void instantiateDocumentMapper() {
        ObjectMapper mapper = new ObjectMapper();
        DocumentReader = mapper.reader(Document.class);
        DocumentWriter = mapper.writerFor(Document.class);
    }

    private static ObjectReader getDocumentObjectReader() {
        if (DocumentReader == null) instantiateMapper();
        return DocumentReader;
    }

    private static ObjectWriter getDocumentObjectWriter() {
        if (DocumentWriter == null) instantiateMapper();
        return DocumentWriter;
    }

    private static ObjectReader NodeTypeReader;
    private static ObjectWriter NodeTypeWriter;

    private static void instantiateNodeTypeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        NodeTypeReader = mapper.reader(NodeType.class);
        NodeTypeWriter = mapper.writerFor(NodeType.class);
    }

    private static ObjectReader getNodeTypeObjectReader() {
        if (NodeTypeReader == null) instantiateMapper();
        return NodeTypeReader;
    }

    private static ObjectWriter getNodeTypeObjectWriter() {
        if (NodeTypeWriter == null) instantiateMapper();
        return NodeTypeWriter;
    }

    private static ObjectReader ExportSettingReader;
    private static ObjectWriter ExportSettingWriter;

    private static void instantiateExportSettingMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ExportSettingReader = mapper.reader(ExportSetting.class);
        ExportSettingWriter = mapper.writerFor(ExportSetting.class);
    }

    private static ObjectReader getExportSettingObjectReader() {
        if (ExportSettingReader == null) instantiateMapper();
        return ExportSettingReader;
    }

    private static ObjectWriter getExportSettingObjectWriter() {
        if (ExportSettingWriter == null) instantiateMapper();
        return ExportSettingWriter;
    }

    private static ObjectReader ComponentReader;
    private static ObjectWriter ComponentWriter;

    private static void instantiateComponentMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ComponentReader = mapper.reader(Component.class);
        ComponentWriter = mapper.writerFor(Component.class);
    }

    private static ObjectReader getComponentObjectReader() {
        if (ComponentReader == null) instantiateMapper();
        return ComponentReader;
    }

    private static ObjectWriter getComponentObjectWriter() {
        if (ComponentWriter == null) instantiateMapper();
        return ComponentWriter;
    }

    private static ObjectReader FileResponseReader;
    private static ObjectWriter FileResponseWriter;

    private static void instantiateFileResponseMapper() {
        ObjectMapper mapper = new ObjectMapper();
        FileResponseReader = mapper.reader(FileResponse.class);
        FileResponseWriter = mapper.writerFor(FileResponse.class);
    }

    private static ObjectReader getFileResponseObjectReader() {
        if (FileResponseReader == null) instantiateMapper();
        return FileResponseReader;
    }

    private static ObjectWriter getFileResponseObjectWriter() {
        if (FileResponseWriter == null) instantiateMapper();
        return FileResponseWriter;
    }

    private static ObjectReader ConstraintReader;
    private static ObjectWriter ConstraintWriter;

    private static void instantiateConstraintMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ConstraintReader = mapper.reader(Constraint.class);
        ConstraintWriter = mapper.writerFor(Constraint.class);
    }

    private static ObjectReader getConstraintObjectReader() {
        if (ConstraintReader == null) instantiateMapper();
        return ConstraintReader;
    }

    private static ObjectWriter getConstraintObjectWriter() {
        if (ConstraintWriter == null) instantiateMapper();
        return ConstraintWriter;
    }

    private static ObjectReader PaintReader;
    private static ObjectWriter PaintWriter;

    private static void instantiatePaintMapper() {
        ObjectMapper mapper = new ObjectMapper();
        PaintReader = mapper.reader(Paint.class);
        PaintWriter = mapper.writerFor(Paint.class);
    }

    private static ObjectReader getPaintObjectReader() {
        if (PaintReader == null) instantiateMapper();
        return PaintReader;
    }

    private static ObjectWriter getPaintObjectWriter() {
        if (PaintWriter == null) instantiateMapper();
        return PaintWriter;
    }

    private static ObjectReader RegularPolygonReader;
    private static ObjectWriter RegularPolygonWriter;

    private static void instantiateRegularPolygonMapper() {
        ObjectMapper mapper = new ObjectMapper();
        RegularPolygonReader = mapper.reader(RegularPolygon.class);
        RegularPolygonWriter = mapper.writerFor(RegularPolygon.class);
    }

    private static ObjectReader getRegularPolygonObjectReader() {
        if (RegularPolygonReader == null) instantiateMapper();
        return RegularPolygonReader;
    }

    private static ObjectWriter getRegularPolygonObjectWriter() {
        if (RegularPolygonWriter == null) instantiateMapper();
        return RegularPolygonWriter;
    }

    private static ObjectReader EllipseReader;
    private static ObjectWriter EllipseWriter;

    private static void instantiateEllipseMapper() {
        ObjectMapper mapper = new ObjectMapper();
        EllipseReader = mapper.reader(Ellipse.class);
        EllipseWriter = mapper.writerFor(Ellipse.class);
    }

    private static ObjectReader getEllipseObjectReader() {
        if (EllipseReader == null) instantiateMapper();
        return EllipseReader;
    }

    private static ObjectWriter getEllipseObjectWriter() {
        if (EllipseWriter == null) instantiateMapper();
        return EllipseWriter;
    }

    private static ObjectReader CommentReader;
    private static ObjectWriter CommentWriter;

    private static void instantiateCommentMapper() {
        ObjectMapper mapper = new ObjectMapper();
        CommentReader = mapper.reader(Comment.class);
        CommentWriter = mapper.writerFor(Comment.class);
    }

    private static ObjectReader getCommentObjectReader() {
        if (CommentReader == null) instantiateMapper();
        return CommentReader;
    }

    private static ObjectWriter getCommentObjectWriter() {
        if (CommentWriter == null) instantiateMapper();
        return CommentWriter;
    }

    private static ObjectReader GroupReader;
    private static ObjectWriter GroupWriter;

    private static void instantiateGroupMapper() {
        ObjectMapper mapper = new ObjectMapper();
        GroupReader = mapper.reader(Group.class);
        GroupWriter = mapper.writerFor(Group.class);
    }

    private static ObjectReader getGroupObjectReader() {
        if (GroupReader == null) instantiateMapper();
        return GroupReader;
    }

    private static ObjectWriter getGroupObjectWriter() {
        if (GroupWriter == null) instantiateMapper();
        return GroupWriter;
    }
}
