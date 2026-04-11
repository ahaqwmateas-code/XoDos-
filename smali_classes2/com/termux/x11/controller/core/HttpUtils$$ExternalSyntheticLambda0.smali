.class public final synthetic Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/x11/controller/core/Callback;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/termux/x11/controller/core/DownloadProgressDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/termux/x11/controller/core/DownloadProgressDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda0;->f$1:Lcom/termux/x11/controller/core/DownloadProgressDialog;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda0;->f$1:Lcom/termux/x11/controller/core/DownloadProgressDialog;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/termux/x11/controller/core/HttpUtils;->lambda$download$3(Landroid/app/Activity;Lcom/termux/x11/controller/core/DownloadProgressDialog;Ljava/lang/Integer;)V

    return-void
.end method
