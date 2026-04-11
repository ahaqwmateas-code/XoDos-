.class public final synthetic Lcom/termux/x11/controller/core/GPUInformation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/collection/ArrayMap;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/Thread;


# direct methods
.method public synthetic constructor <init>(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/Thread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/core/GPUInformation$$ExternalSyntheticLambda0;->f$0:Landroidx/collection/ArrayMap;

    iput-object p2, p0, Lcom/termux/x11/controller/core/GPUInformation$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/termux/x11/controller/core/GPUInformation$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/core/GPUInformation$$ExternalSyntheticLambda0;->f$0:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Lcom/termux/x11/controller/core/GPUInformation$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/x11/controller/core/GPUInformation$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Thread;

    invoke-static {v0, v1, v2}, Lcom/termux/x11/controller/core/GPUInformation;->lambda$loadGPUInformation$0(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/Thread;)V

    return-void
.end method
