.class Lcom/termux/floatball/menu/FloatMenu$1;
.super Ljava/lang/Object;
.source "FloatMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/floatball/menu/FloatMenu;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/floatball/menu/FloatMenu;


# direct methods
.method constructor <init>(Lcom/termux/floatball/menu/FloatMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/floatball/menu/FloatMenu;

    .line 139
    iput-object p1, p0, Lcom/termux/floatball/menu/FloatMenu$1;->this$0:Lcom/termux/floatball/menu/FloatMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu$1;->this$0:Lcom/termux/floatball/menu/FloatMenu;

    invoke-virtual {v0}, Lcom/termux/floatball/menu/FloatMenu;->closeMenu()V

    .line 143
    return-void
.end method
