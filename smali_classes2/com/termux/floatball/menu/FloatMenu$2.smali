.class Lcom/termux/floatball/menu/FloatMenu$2;
.super Ljava/lang/Object;
.source "FloatMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/floatball/menu/FloatMenu;->toggle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/floatball/menu/FloatMenu;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/termux/floatball/menu/FloatMenu;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/floatball/menu/FloatMenu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/termux/floatball/menu/FloatMenu$2;->this$0:Lcom/termux/floatball/menu/FloatMenu;

    iput p2, p0, Lcom/termux/floatball/menu/FloatMenu$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu$2;->this$0:Lcom/termux/floatball/menu/FloatMenu;

    invoke-static {v0}, Lcom/termux/floatball/menu/FloatMenu;->access$100(Lcom/termux/floatball/menu/FloatMenu;)Lcom/termux/floatball/menu/MenuLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu$2;->this$0:Lcom/termux/floatball/menu/FloatMenu;

    invoke-static {v1}, Lcom/termux/floatball/menu/FloatMenu;->access$000(Lcom/termux/floatball/menu/FloatMenu;)I

    move-result v1

    iget v2, p0, Lcom/termux/floatball/menu/FloatMenu$2;->val$duration:I

    invoke-virtual {v0, v1, v2}, Lcom/termux/floatball/menu/MenuLayout;->switchState(II)V

    .line 180
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu$2;->this$0:Lcom/termux/floatball/menu/FloatMenu;

    invoke-virtual {v0, p0}, Lcom/termux/floatball/menu/FloatMenu;->removeViewTreeObserver(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 181
    return-void
.end method
