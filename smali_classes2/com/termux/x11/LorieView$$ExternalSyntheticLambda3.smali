.class public final synthetic Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/LorieView;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/LorieView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/LorieView;

    return-void
.end method


# virtual methods
.method public final onPrimaryClipChanged()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/LorieView;

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->handleClipboardChange()V

    return-void
.end method
