.class public final synthetic Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/floatball/menu/FloatMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/floatball/menu/FloatMenu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda1;->f$0:Lcom/termux/floatball/menu/FloatMenu;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda1;->f$0:Lcom/termux/floatball/menu/FloatMenu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/termux/floatball/menu/FloatMenu;->lambda$init$0$com-termux-floatball-menu-FloatMenu(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
