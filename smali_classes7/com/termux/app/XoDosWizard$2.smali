.class Lcom/termux/app/XoDosWizard$2;
.super Ljava/lang/Object;
.source "XoDosWizard.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/XoDosWizard;->showUnifiedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/XoDosWizard;

.field final synthetic val$wineOptions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/termux/app/XoDosWizard;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/XoDosWizard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/termux/app/XoDosWizard$2;->this$0:Lcom/termux/app/XoDosWizard;

    iput-object p2, p0, Lcom/termux/app/XoDosWizard$2;->val$wineOptions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 224
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/termux/app/XoDosWizard$2;->val$wineOptions:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 225
    .local v0, "newWine":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/app/XoDosWizard$2;->this$0:Lcom/termux/app/XoDosWizard;

    invoke-static {v1, v0}, Lcom/termux/app/XoDosWizard;->access$002(Lcom/termux/app/XoDosWizard;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    const-string v1, "glibc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/termux/app/XoDosWizard$2;->this$0:Lcom/termux/app/XoDosWizard;

    invoke-static {v1}, Lcom/termux/app/XoDosWizard;->access$500(Lcom/termux/app/XoDosWizard;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/termux/app/XoDosWizard$2;->this$0:Lcom/termux/app/XoDosWizard;

    const-string v2, "<none>"

    invoke-static {v1, v0, v2}, Lcom/termux/app/XoDosWizard;->access$200(Lcom/termux/app/XoDosWizard;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/termux/app/XoDosWizard$2;->this$0:Lcom/termux/app/XoDosWizard;

    invoke-static {v1, v0, v2}, Lcom/termux/app/XoDosWizard;->access$400(Lcom/termux/app/XoDosWizard;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 234
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
