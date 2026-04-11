.class public Lcom/termux/floatball/widget/FloatBallCfg;
.super Ljava/lang/Object;
.source "FloatBallCfg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/floatball/widget/FloatBallCfg$Gravity;
    }
.end annotation


# instance fields
.field public mGravity:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

.field public mHideHalfLater:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mOffsetY:I

.field public mSize:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 24
    sget-object v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->LEFT_TOP:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/termux/floatball/widget/FloatBallCfg;-><init>(ILandroid/graphics/drawable/Drawable;Lcom/termux/floatball/widget/FloatBallCfg$Gravity;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Lcom/termux/floatball/widget/FloatBallCfg$Gravity;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "gravity"    # Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/floatball/widget/FloatBallCfg;-><init>(ILandroid/graphics/drawable/Drawable;Lcom/termux/floatball/widget/FloatBallCfg$Gravity;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Lcom/termux/floatball/widget/FloatBallCfg$Gravity;I)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "gravity"    # Lcom/termux/floatball/widget/FloatBallCfg$Gravity;
    .param p4, "offsetY"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mOffsetY:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mHideHalfLater:Z

    .line 32
    iput p1, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mSize:I

    .line 33
    iput-object p2, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-object p3, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mGravity:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 35
    iput p4, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mOffsetY:I

    .line 36
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Lcom/termux/floatball/widget/FloatBallCfg$Gravity;IZ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "gravity"    # Lcom/termux/floatball/widget/FloatBallCfg$Gravity;
    .param p4, "offsetY"    # I
    .param p5, "hideHalfLater"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mOffsetY:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mHideHalfLater:Z

    .line 46
    iput p1, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mSize:I

    .line 47
    iput-object p2, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object p3, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mGravity:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 49
    iput p4, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mOffsetY:I

    .line 50
    iput-boolean p5, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mHideHalfLater:Z

    .line 51
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Lcom/termux/floatball/widget/FloatBallCfg$Gravity;Z)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "gravity"    # Lcom/termux/floatball/widget/FloatBallCfg$Gravity;
    .param p4, "hideHalfLater"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mOffsetY:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mHideHalfLater:Z

    .line 39
    iput p1, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mSize:I

    .line 40
    iput-object p2, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object p3, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mGravity:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 42
    iput-boolean p4, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mHideHalfLater:Z

    .line 43
    return-void
.end method


# virtual methods
.method public setGravity(Lcom/termux/floatball/widget/FloatBallCfg$Gravity;)V
    .locals 0
    .param p1, "gravity"    # Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 54
    iput-object p1, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mGravity:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 55
    return-void
.end method

.method public setHideHalfLater(Z)V
    .locals 0
    .param p1, "hideHalfLater"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/termux/floatball/widget/FloatBallCfg;->mHideHalfLater:Z

    .line 59
    return-void
.end method
