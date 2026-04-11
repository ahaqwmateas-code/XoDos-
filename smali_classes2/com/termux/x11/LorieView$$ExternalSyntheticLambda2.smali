.class public final synthetic Lcom/termux/x11/LorieView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/LorieView;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/LorieView;Landroid/graphics/Rect;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/LorieView;

    iput-object p2, p0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/LorieView;

    iget-object v1, p0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->lambda$triggerCallback$0$com-termux-x11-LorieView(Landroid/graphics/Rect;)V

    return-void
.end method
