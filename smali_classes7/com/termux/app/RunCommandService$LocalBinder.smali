.class Lcom/termux/app/RunCommandService$LocalBinder;
.super Landroid/os/Binder;
.source "RunCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/RunCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field public final service:Lcom/termux/app/RunCommandService;

.field final synthetic this$0:Lcom/termux/app/RunCommandService;


# direct methods
.method constructor <init>(Lcom/termux/app/RunCommandService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/app/RunCommandService;

    .line 40
    iput-object p1, p0, Lcom/termux/app/RunCommandService$LocalBinder;->this$0:Lcom/termux/app/RunCommandService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    iget-object v0, p0, Lcom/termux/app/RunCommandService$LocalBinder;->this$0:Lcom/termux/app/RunCommandService;

    iput-object v0, p0, Lcom/termux/app/RunCommandService$LocalBinder;->service:Lcom/termux/app/RunCommandService;

    return-void
.end method
