.class Lcom/termux/x11/MainActivity$4;
.super Landroid/view/View$DragShadowBuilder;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/MainActivity;->initStylusAuxButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/MainActivity;


# direct methods
.method constructor <init>(Lcom/termux/x11/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/MainActivity;
    .param p2, "arg0"    # Landroid/view/View;

    .line 554
    iput-object p1, p0, Lcom/termux/x11/MainActivity$4;->this$0:Lcom/termux/x11/MainActivity;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 556
    return-void
.end method
