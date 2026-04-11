.class public final synthetic Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$3:Landroid/app/Activity;

.field public final synthetic f$4:Lcom/termux/x11/controller/core/DownloadProgressDialog;

.field public final synthetic f$5:Lcom/termux/x11/controller/core/Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Lcom/termux/x11/controller/core/DownloadProgressDialog;Lcom/termux/x11/controller/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$3:Landroid/app/Activity;

    iput-object p5, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$4:Lcom/termux/x11/controller/core/DownloadProgressDialog;

    iput-object p6, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$5:Lcom/termux/x11/controller/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$3:Landroid/app/Activity;

    iget-object v4, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$4:Lcom/termux/x11/controller/core/DownloadProgressDialog;

    iget-object v5, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda3;->f$5:Lcom/termux/x11/controller/core/Callback;

    invoke-static/range {v0 .. v5}, Lcom/termux/x11/controller/core/HttpUtils;->lambda$download$6(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Lcom/termux/x11/controller/core/DownloadProgressDialog;Lcom/termux/x11/controller/core/Callback;)V

    return-void
.end method
