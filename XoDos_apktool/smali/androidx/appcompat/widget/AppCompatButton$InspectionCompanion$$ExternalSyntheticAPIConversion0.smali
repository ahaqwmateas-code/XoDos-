.class public final synthetic Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion$$ExternalSyntheticAPIConversion0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;ILj$/util/function/IntFunction;)I
    .locals 0

    .line 0
    invoke-static {p3}, Lj$/util/function/IntFunction$Wrapper;->convert(Lj$/util/function/IntFunction;)Ljava/util/function/IntFunction;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result p0

    return p0
.end method
