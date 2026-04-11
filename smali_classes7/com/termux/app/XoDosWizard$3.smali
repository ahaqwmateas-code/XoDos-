.class Lcom/termux/app/XoDosWizard$3;
.super Ljava/lang/Object;
.source "XoDosWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/XoDosWizard;->updateSpinner(Landroid/widget/Spinner;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/XoDosWizard;

.field final synthetic val$selectIfFound:Ljava/lang/String;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/termux/app/XoDosWizard;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/XoDosWizard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/termux/app/XoDosWizard$3;->this$0:Lcom/termux/app/XoDosWizard;

    iput-object p2, p0, Lcom/termux/app/XoDosWizard$3;->val$spinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/termux/app/XoDosWizard$3;->val$selectIfFound:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/termux/app/XoDosWizard$3;->this$0:Lcom/termux/app/XoDosWizard;

    iget-object v1, p0, Lcom/termux/app/XoDosWizard$3;->val$spinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/termux/app/XoDosWizard$3;->val$selectIfFound:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/termux/app/XoDosWizard;->access$600(Lcom/termux/app/XoDosWizard;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 548
    return-void
.end method
