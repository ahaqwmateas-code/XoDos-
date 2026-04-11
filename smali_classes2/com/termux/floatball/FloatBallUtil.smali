.class public Lcom/termux/floatball/FloatBallUtil;
.super Ljava/lang/Object;
.source "FloatBallUtil.java"


# static fields
.field public static inSingleActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 15
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/floatball/FloatBallUtil;->getLayoutParams(Landroid/content/Context;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutParams(Landroid/content/Context;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listenBackEvent"    # Z

    .line 19
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 21
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x40228

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 26
    :cond_0
    if-eqz p0, :cond_2

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    .line 27
    :cond_2
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .local v1, "sdkInt":I
    nop

    .line 30
    const/16 v2, 0x19

    const/16 v3, 0x7d2

    if-ge v1, v2, :cond_4

    .line 31
    const-string v2, "Xiaomi"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 34
    :cond_3
    const/16 v2, 0x7d5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 36
    :cond_4
    const/16 v2, 0x1a

    if-ge v1, v2, :cond_5

    .line 37
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 39
    :cond_5
    const/16 v2, 0x7f6

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 41
    .end local v1    # "sdkInt":I
    :goto_1
    nop

    .line 44
    :goto_2
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 45
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 46
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 47
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 48
    return-object v0
.end method

.method public static getStatusBarLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 53
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 54
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 55
    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 57
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 58
    if-eqz p0, :cond_1

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    .line 59
    :cond_1
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .local v1, "sdkInt":I
    nop

    .line 62
    const/16 v2, 0x19

    if-ge v1, v2, :cond_2

    .line 63
    const/16 v2, 0x7d5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 64
    :cond_2
    const/16 v2, 0x1a

    if-ge v1, v2, :cond_3

    .line 65
    const/16 v2, 0x7d2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 67
    :cond_3
    const/16 v2, 0x7f6

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 69
    .end local v1    # "sdkInt":I
    :goto_1
    nop

    .line 72
    :goto_2
    return-object v0
.end method
