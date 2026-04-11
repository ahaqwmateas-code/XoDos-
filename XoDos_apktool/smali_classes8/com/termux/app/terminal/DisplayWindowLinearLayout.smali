.class public Lcom/termux/app/terminal/DisplayWindowLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DisplayWindowLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/DisplayWindowLinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 17
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 20
    return v1

    .line 21
    :cond_1
    if-ne p2, v0, :cond_2

    .line 22
    const/4 v0, 0x0

    return v0

    .line 23
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method
