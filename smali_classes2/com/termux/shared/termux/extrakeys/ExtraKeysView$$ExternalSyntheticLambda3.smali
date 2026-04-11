.class public final synthetic Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

.field public final synthetic f$3:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;->f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;->f$2:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    iput-object p4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;->f$3:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;->f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;->f$2:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    iget-object v3, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;->f$3:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->lambda$startScheduledExecutors$2$com-termux-shared-termux-extrakeys-ExtraKeysView(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method
