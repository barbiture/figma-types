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
//     RegularPolygonNode data = Converter.RegularPolygonNodeFromJsonString(jsonString);
//     EllipseNode data = Converter.EllipseNodeFromJsonString(jsonString);
//     GroupNode data = Converter.GroupNodeFromJsonString(jsonString);
//     Node data = Converter.NodeFromJsonString(jsonString);
//     Vector data = Converter.VectorFromJsonString(jsonString);
//     Color data = Converter.ColorFromJsonString(jsonString);
//     Global data = Converter.GlobalFromJsonString(jsonString);
//     ColorStop data = Converter.ColorStopFromJsonString(jsonString);
//     VectorNode data = Converter.VectorNodeFromJsonString(jsonString);
//     LayoutConstraint data = Converter.LayoutConstraintFromJsonString(jsonString);
//     BooleanNode data = Converter.BooleanNodeFromJsonString(jsonString);
//     User data = Converter.UserFromJsonString(jsonString);
//     TextNode data = Converter.TextNodeFromJsonString(jsonString);
//     FrameNode data = Converter.FrameNodeFromJsonString(jsonString);
//     Rectangle data = Converter.RectangleFromJsonString(jsonString);
//     LayoutGrid data = Converter.LayoutGridFromJsonString(jsonString);
//     Effect data = Converter.EffectFromJsonString(jsonString);
//     RectangleNode data = Converter.RectangleNodeFromJsonString(jsonString);
//     BlendMode data = Converter.BlendModeFromJsonString(jsonString);
//     SliceNode data = Converter.SliceNodeFromJsonString(jsonString);
//     StarNode data = Converter.StarNodeFromJsonString(jsonString);
//     LineNode data = Converter.LineNodeFromJsonString(jsonString);
//     InstanceNode data = Converter.InstanceNodeFromJsonString(jsonString);
//     TypeStyle data = Converter.TypeStyleFromJsonString(jsonString);
//     CanvasNode data = Converter.CanvasNodeFromJsonString(jsonString);
//     ExportSetting data = Converter.ExportSettingFromJsonString(jsonString);
//     DocumentNode data = Converter.DocumentNodeFromJsonString(jsonString);
//     Constraint data = Converter.ConstraintFromJsonString(jsonString);
//     Paint data = Converter.PaintFromJsonString(jsonString);
//     ComponentNode data = Converter.ComponentNodeFromJsonString(jsonString);
//     Comment data = Converter.CommentFromJsonString(jsonString);

package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.core.JsonProcessingException;

public class Converter {
    // Serialize/deserialize helpers

    public static RegularPolygonNode RegularPolygonNodeFromJsonString(String json) throws IOException {
        return getRegularPolygonNodeObjectReader().readValue(json);
    }

    public static String RegularPolygonNodeToJsonString(RegularPolygonNode obj) throws JsonProcessingException {
        return getRegularPolygonNodeObjectWriter().writeValueAsString(obj);
    }

    public static EllipseNode EllipseNodeFromJsonString(String json) throws IOException {
        return getEllipseNodeObjectReader().readValue(json);
    }

    public static String EllipseNodeToJsonString(EllipseNode obj) throws JsonProcessingException {
        return getEllipseNodeObjectWriter().writeValueAsString(obj);
    }

    public static GroupNode GroupNodeFromJsonString(String json) throws IOException {
        return getGroupNodeObjectReader().readValue(json);
    }

    public static String GroupNodeToJsonString(GroupNode obj) throws JsonProcessingException {
        return getGroupNodeObjectWriter().writeValueAsString(obj);
    }

    public static Node NodeFromJsonString(String json) throws IOException {
        return getNodeObjectReader().readValue(json);
    }

    public static String NodeToJsonString(Node obj) throws JsonProcessingException {
        return getNodeObjectWriter().writeValueAsString(obj);
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

    public static Global GlobalFromJsonString(String json) throws IOException {
        return getGlobalObjectReader().readValue(json);
    }

    public static String GlobalToJsonString(Global obj) throws JsonProcessingException {
        return getGlobalObjectWriter().writeValueAsString(obj);
    }

    public static ColorStop ColorStopFromJsonString(String json) throws IOException {
        return getColorStopObjectReader().readValue(json);
    }

    public static String ColorStopToJsonString(ColorStop obj) throws JsonProcessingException {
        return getColorStopObjectWriter().writeValueAsString(obj);
    }

    public static VectorNode VectorNodeFromJsonString(String json) throws IOException {
        return getVectorNodeObjectReader().readValue(json);
    }

    public static String VectorNodeToJsonString(VectorNode obj) throws JsonProcessingException {
        return getVectorNodeObjectWriter().writeValueAsString(obj);
    }

    public static LayoutConstraint LayoutConstraintFromJsonString(String json) throws IOException {
        return getLayoutConstraintObjectReader().readValue(json);
    }

    public static String LayoutConstraintToJsonString(LayoutConstraint obj) throws JsonProcessingException {
        return getLayoutConstraintObjectWriter().writeValueAsString(obj);
    }

    public static BooleanNode BooleanNodeFromJsonString(String json) throws IOException {
        return getBooleanNodeObjectReader().readValue(json);
    }

    public static String BooleanNodeToJsonString(BooleanNode obj) throws JsonProcessingException {
        return getBooleanNodeObjectWriter().writeValueAsString(obj);
    }

    public static User UserFromJsonString(String json) throws IOException {
        return getUserObjectReader().readValue(json);
    }

    public static String UserToJsonString(User obj) throws JsonProcessingException {
        return getUserObjectWriter().writeValueAsString(obj);
    }

    public static TextNode TextNodeFromJsonString(String json) throws IOException {
        return getTextNodeObjectReader().readValue(json);
    }

    public static String TextNodeToJsonString(TextNode obj) throws JsonProcessingException {
        return getTextNodeObjectWriter().writeValueAsString(obj);
    }

    public static FrameNode FrameNodeFromJsonString(String json) throws IOException {
        return getFrameNodeObjectReader().readValue(json);
    }

    public static String FrameNodeToJsonString(FrameNode obj) throws JsonProcessingException {
        return getFrameNodeObjectWriter().writeValueAsString(obj);
    }

    public static Rectangle RectangleFromJsonString(String json) throws IOException {
        return getRectangleObjectReader().readValue(json);
    }

    public static String RectangleToJsonString(Rectangle obj) throws JsonProcessingException {
        return getRectangleObjectWriter().writeValueAsString(obj);
    }

    public static LayoutGrid LayoutGridFromJsonString(String json) throws IOException {
        return getLayoutGridObjectReader().readValue(json);
    }

    public static String LayoutGridToJsonString(LayoutGrid obj) throws JsonProcessingException {
        return getLayoutGridObjectWriter().writeValueAsString(obj);
    }

    public static Effect EffectFromJsonString(String json) throws IOException {
        return getEffectObjectReader().readValue(json);
    }

    public static String EffectToJsonString(Effect obj) throws JsonProcessingException {
        return getEffectObjectWriter().writeValueAsString(obj);
    }

    public static RectangleNode RectangleNodeFromJsonString(String json) throws IOException {
        return getRectangleNodeObjectReader().readValue(json);
    }

    public static String RectangleNodeToJsonString(RectangleNode obj) throws JsonProcessingException {
        return getRectangleNodeObjectWriter().writeValueAsString(obj);
    }

    public static BlendMode BlendModeFromJsonString(String json) throws IOException {
        return getBlendModeObjectReader().readValue(json);
    }

    public static String BlendModeToJsonString(BlendMode obj) throws JsonProcessingException {
        return getBlendModeObjectWriter().writeValueAsString(obj);
    }

    public static SliceNode SliceNodeFromJsonString(String json) throws IOException {
        return getSliceNodeObjectReader().readValue(json);
    }

    public static String SliceNodeToJsonString(SliceNode obj) throws JsonProcessingException {
        return getSliceNodeObjectWriter().writeValueAsString(obj);
    }

    public static StarNode StarNodeFromJsonString(String json) throws IOException {
        return getStarNodeObjectReader().readValue(json);
    }

    public static String StarNodeToJsonString(StarNode obj) throws JsonProcessingException {
        return getStarNodeObjectWriter().writeValueAsString(obj);
    }

    public static LineNode LineNodeFromJsonString(String json) throws IOException {
        return getLineNodeObjectReader().readValue(json);
    }

    public static String LineNodeToJsonString(LineNode obj) throws JsonProcessingException {
        return getLineNodeObjectWriter().writeValueAsString(obj);
    }

    public static InstanceNode InstanceNodeFromJsonString(String json) throws IOException {
        return getInstanceNodeObjectReader().readValue(json);
    }

    public static String InstanceNodeToJsonString(InstanceNode obj) throws JsonProcessingException {
        return getInstanceNodeObjectWriter().writeValueAsString(obj);
    }

    public static TypeStyle TypeStyleFromJsonString(String json) throws IOException {
        return getTypeStyleObjectReader().readValue(json);
    }

    public static String TypeStyleToJsonString(TypeStyle obj) throws JsonProcessingException {
        return getTypeStyleObjectWriter().writeValueAsString(obj);
    }

    public static CanvasNode CanvasNodeFromJsonString(String json) throws IOException {
        return getCanvasNodeObjectReader().readValue(json);
    }

    public static String CanvasNodeToJsonString(CanvasNode obj) throws JsonProcessingException {
        return getCanvasNodeObjectWriter().writeValueAsString(obj);
    }

    public static ExportSetting ExportSettingFromJsonString(String json) throws IOException {
        return getExportSettingObjectReader().readValue(json);
    }

    public static String ExportSettingToJsonString(ExportSetting obj) throws JsonProcessingException {
        return getExportSettingObjectWriter().writeValueAsString(obj);
    }

    public static DocumentNode DocumentNodeFromJsonString(String json) throws IOException {
        return getDocumentNodeObjectReader().readValue(json);
    }

    public static String DocumentNodeToJsonString(DocumentNode obj) throws JsonProcessingException {
        return getDocumentNodeObjectWriter().writeValueAsString(obj);
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

    public static ComponentNode ComponentNodeFromJsonString(String json) throws IOException {
        return getComponentNodeObjectReader().readValue(json);
    }

    public static String ComponentNodeToJsonString(ComponentNode obj) throws JsonProcessingException {
        return getComponentNodeObjectWriter().writeValueAsString(obj);
    }

    public static Comment CommentFromJsonString(String json) throws IOException {
        return getCommentObjectReader().readValue(json);
    }

    public static String CommentToJsonString(Comment obj) throws JsonProcessingException {
        return getCommentObjectWriter().writeValueAsString(obj);
    }

    private static ObjectReader RegularPolygonNodeReader;
    private static ObjectWriter RegularPolygonNodeWriter;

    private static void instantiateRegularPolygonNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        RegularPolygonNodeReader = mapper.reader(RegularPolygonNode.class);
        RegularPolygonNodeWriter = mapper.writerFor(RegularPolygonNode.class);
    }

    private static ObjectReader getRegularPolygonNodeObjectReader() {
        if (RegularPolygonNodeReader == null) instantiateMapper();
        return RegularPolygonNodeReader;
    }

    private static ObjectWriter getRegularPolygonNodeObjectWriter() {
        if (RegularPolygonNodeWriter == null) instantiateMapper();
        return RegularPolygonNodeWriter;
    }

    private static ObjectReader EllipseNodeReader;
    private static ObjectWriter EllipseNodeWriter;

    private static void instantiateEllipseNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        EllipseNodeReader = mapper.reader(EllipseNode.class);
        EllipseNodeWriter = mapper.writerFor(EllipseNode.class);
    }

    private static ObjectReader getEllipseNodeObjectReader() {
        if (EllipseNodeReader == null) instantiateMapper();
        return EllipseNodeReader;
    }

    private static ObjectWriter getEllipseNodeObjectWriter() {
        if (EllipseNodeWriter == null) instantiateMapper();
        return EllipseNodeWriter;
    }

    private static ObjectReader GroupNodeReader;
    private static ObjectWriter GroupNodeWriter;

    private static void instantiateGroupNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        GroupNodeReader = mapper.reader(GroupNode.class);
        GroupNodeWriter = mapper.writerFor(GroupNode.class);
    }

    private static ObjectReader getGroupNodeObjectReader() {
        if (GroupNodeReader == null) instantiateMapper();
        return GroupNodeReader;
    }

    private static ObjectWriter getGroupNodeObjectWriter() {
        if (GroupNodeWriter == null) instantiateMapper();
        return GroupNodeWriter;
    }

    private static ObjectReader NodeReader;
    private static ObjectWriter NodeWriter;

    private static void instantiateNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        NodeReader = mapper.reader(Node.class);
        NodeWriter = mapper.writerFor(Node.class);
    }

    private static ObjectReader getNodeObjectReader() {
        if (NodeReader == null) instantiateMapper();
        return NodeReader;
    }

    private static ObjectWriter getNodeObjectWriter() {
        if (NodeWriter == null) instantiateMapper();
        return NodeWriter;
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

    private static ObjectReader GlobalReader;
    private static ObjectWriter GlobalWriter;

    private static void instantiateGlobalMapper() {
        ObjectMapper mapper = new ObjectMapper();
        GlobalReader = mapper.reader(Global.class);
        GlobalWriter = mapper.writerFor(Global.class);
    }

    private static ObjectReader getGlobalObjectReader() {
        if (GlobalReader == null) instantiateMapper();
        return GlobalReader;
    }

    private static ObjectWriter getGlobalObjectWriter() {
        if (GlobalWriter == null) instantiateMapper();
        return GlobalWriter;
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

    private static ObjectReader VectorNodeReader;
    private static ObjectWriter VectorNodeWriter;

    private static void instantiateVectorNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        VectorNodeReader = mapper.reader(VectorNode.class);
        VectorNodeWriter = mapper.writerFor(VectorNode.class);
    }

    private static ObjectReader getVectorNodeObjectReader() {
        if (VectorNodeReader == null) instantiateMapper();
        return VectorNodeReader;
    }

    private static ObjectWriter getVectorNodeObjectWriter() {
        if (VectorNodeWriter == null) instantiateMapper();
        return VectorNodeWriter;
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

    private static ObjectReader BooleanNodeReader;
    private static ObjectWriter BooleanNodeWriter;

    private static void instantiateBooleanNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        BooleanNodeReader = mapper.reader(BooleanNode.class);
        BooleanNodeWriter = mapper.writerFor(BooleanNode.class);
    }

    private static ObjectReader getBooleanNodeObjectReader() {
        if (BooleanNodeReader == null) instantiateMapper();
        return BooleanNodeReader;
    }

    private static ObjectWriter getBooleanNodeObjectWriter() {
        if (BooleanNodeWriter == null) instantiateMapper();
        return BooleanNodeWriter;
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

    private static ObjectReader TextNodeReader;
    private static ObjectWriter TextNodeWriter;

    private static void instantiateTextNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        TextNodeReader = mapper.reader(TextNode.class);
        TextNodeWriter = mapper.writerFor(TextNode.class);
    }

    private static ObjectReader getTextNodeObjectReader() {
        if (TextNodeReader == null) instantiateMapper();
        return TextNodeReader;
    }

    private static ObjectWriter getTextNodeObjectWriter() {
        if (TextNodeWriter == null) instantiateMapper();
        return TextNodeWriter;
    }

    private static ObjectReader FrameNodeReader;
    private static ObjectWriter FrameNodeWriter;

    private static void instantiateFrameNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        FrameNodeReader = mapper.reader(FrameNode.class);
        FrameNodeWriter = mapper.writerFor(FrameNode.class);
    }

    private static ObjectReader getFrameNodeObjectReader() {
        if (FrameNodeReader == null) instantiateMapper();
        return FrameNodeReader;
    }

    private static ObjectWriter getFrameNodeObjectWriter() {
        if (FrameNodeWriter == null) instantiateMapper();
        return FrameNodeWriter;
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

    private static ObjectReader RectangleNodeReader;
    private static ObjectWriter RectangleNodeWriter;

    private static void instantiateRectangleNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        RectangleNodeReader = mapper.reader(RectangleNode.class);
        RectangleNodeWriter = mapper.writerFor(RectangleNode.class);
    }

    private static ObjectReader getRectangleNodeObjectReader() {
        if (RectangleNodeReader == null) instantiateMapper();
        return RectangleNodeReader;
    }

    private static ObjectWriter getRectangleNodeObjectWriter() {
        if (RectangleNodeWriter == null) instantiateMapper();
        return RectangleNodeWriter;
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

    private static ObjectReader SliceNodeReader;
    private static ObjectWriter SliceNodeWriter;

    private static void instantiateSliceNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        SliceNodeReader = mapper.reader(SliceNode.class);
        SliceNodeWriter = mapper.writerFor(SliceNode.class);
    }

    private static ObjectReader getSliceNodeObjectReader() {
        if (SliceNodeReader == null) instantiateMapper();
        return SliceNodeReader;
    }

    private static ObjectWriter getSliceNodeObjectWriter() {
        if (SliceNodeWriter == null) instantiateMapper();
        return SliceNodeWriter;
    }

    private static ObjectReader StarNodeReader;
    private static ObjectWriter StarNodeWriter;

    private static void instantiateStarNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        StarNodeReader = mapper.reader(StarNode.class);
        StarNodeWriter = mapper.writerFor(StarNode.class);
    }

    private static ObjectReader getStarNodeObjectReader() {
        if (StarNodeReader == null) instantiateMapper();
        return StarNodeReader;
    }

    private static ObjectWriter getStarNodeObjectWriter() {
        if (StarNodeWriter == null) instantiateMapper();
        return StarNodeWriter;
    }

    private static ObjectReader LineNodeReader;
    private static ObjectWriter LineNodeWriter;

    private static void instantiateLineNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        LineNodeReader = mapper.reader(LineNode.class);
        LineNodeWriter = mapper.writerFor(LineNode.class);
    }

    private static ObjectReader getLineNodeObjectReader() {
        if (LineNodeReader == null) instantiateMapper();
        return LineNodeReader;
    }

    private static ObjectWriter getLineNodeObjectWriter() {
        if (LineNodeWriter == null) instantiateMapper();
        return LineNodeWriter;
    }

    private static ObjectReader InstanceNodeReader;
    private static ObjectWriter InstanceNodeWriter;

    private static void instantiateInstanceNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        InstanceNodeReader = mapper.reader(InstanceNode.class);
        InstanceNodeWriter = mapper.writerFor(InstanceNode.class);
    }

    private static ObjectReader getInstanceNodeObjectReader() {
        if (InstanceNodeReader == null) instantiateMapper();
        return InstanceNodeReader;
    }

    private static ObjectWriter getInstanceNodeObjectWriter() {
        if (InstanceNodeWriter == null) instantiateMapper();
        return InstanceNodeWriter;
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

    private static ObjectReader CanvasNodeReader;
    private static ObjectWriter CanvasNodeWriter;

    private static void instantiateCanvasNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        CanvasNodeReader = mapper.reader(CanvasNode.class);
        CanvasNodeWriter = mapper.writerFor(CanvasNode.class);
    }

    private static ObjectReader getCanvasNodeObjectReader() {
        if (CanvasNodeReader == null) instantiateMapper();
        return CanvasNodeReader;
    }

    private static ObjectWriter getCanvasNodeObjectWriter() {
        if (CanvasNodeWriter == null) instantiateMapper();
        return CanvasNodeWriter;
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

    private static ObjectReader DocumentNodeReader;
    private static ObjectWriter DocumentNodeWriter;

    private static void instantiateDocumentNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        DocumentNodeReader = mapper.reader(DocumentNode.class);
        DocumentNodeWriter = mapper.writerFor(DocumentNode.class);
    }

    private static ObjectReader getDocumentNodeObjectReader() {
        if (DocumentNodeReader == null) instantiateMapper();
        return DocumentNodeReader;
    }

    private static ObjectWriter getDocumentNodeObjectWriter() {
        if (DocumentNodeWriter == null) instantiateMapper();
        return DocumentNodeWriter;
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

    private static ObjectReader ComponentNodeReader;
    private static ObjectWriter ComponentNodeWriter;

    private static void instantiateComponentNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ComponentNodeReader = mapper.reader(ComponentNode.class);
        ComponentNodeWriter = mapper.writerFor(ComponentNode.class);
    }

    private static ObjectReader getComponentNodeObjectReader() {
        if (ComponentNodeReader == null) instantiateMapper();
        return ComponentNodeReader;
    }

    private static ObjectWriter getComponentNodeObjectWriter() {
        if (ComponentNodeWriter == null) instantiateMapper();
        return ComponentNodeWriter;
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
}
