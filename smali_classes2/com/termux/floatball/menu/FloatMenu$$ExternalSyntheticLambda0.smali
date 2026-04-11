.class public final synthetic Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/floatball/menu/FloatMenu;

.field public final synthetic f$1:Lcom/termux/floatball/menu/MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/floatball/menu/FloatMenu;Lcom/termux/floatball/menu/MenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda0;->f$0:Lcom/termux/floatball/menu/FloatMenu;

    iput-object p2, p0, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda0;->f$1:Lcom/termux/floatball/menu/MenuItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda0;->f$0:Lcom/termux/floatball/menu/FloatMenu;

    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda0;->f$1:Lcom/termux/floatball/menu/MenuItem;

    invoke-virtual {v0, v1, p1}, Lcom/termux/floatball/menu/FloatMenu;->lambda$addItem$1$com-termux-floatball-menu-FloatMenu(Lcom/termux/floatball/menu/MenuItem;Landroid/view/View;)V

    return-void
.end method
