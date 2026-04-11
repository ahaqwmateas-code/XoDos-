.class Lcom/termux/app/XoDosWizard$1;
.super Ljava/lang/Object;
.source "XoDosWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/termux/app/XoDosWizard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/XoDosWizard;

    .line 213
    iput-object p1, p0, Lcom/termux/app/XoDosWizard$1;->this$0:Lcom/termux/app/XoDosWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/termux/app/XoDosWizard$1;->this$0:Lcom/termux/app/XoDosWizard;

    iget-object v1, p0, Lcom/termux/app/XoDosWizard$1;->this$0:Lcom/termux/app/XoDosWizard;

    invoke-static {v1}, Lcom/termux/app/XoDosWizard;->access$000(Lcom/termux/app/XoDosWizard;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosWizard$1;->this$0:Lcom/termux/app/XoDosWizard;

    invoke-static {v2}, Lcom/termux/app/XoDosWizard;->access$100(Lcom/termux/app/XoDosWizard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/termux/app/XoDosWizard;->access$200(Lcom/termux/app/XoDosWizard;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/termux/app/XoDosWizard$1;->this$0:Lcom/termux/app/XoDosWizard;

    iget-object v1, p0, Lcom/termux/app/XoDosWizard$1;->this$0:Lcom/termux/app/XoDosWizard;

    invoke-static {v1}, Lcom/termux/app/XoDosWizard;->access$000(Lcom/termux/app/XoDosWizard;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosWizard$1;->this$0:Lcom/termux/app/XoDosWizard;

    invoke-static {v2}, Lcom/termux/app/XoDosWizard;->access$300(Lcom/termux/app/XoDosWizard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/termux/app/XoDosWizard;->access$400(Lcom/termux/app/XoDosWizard;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method
