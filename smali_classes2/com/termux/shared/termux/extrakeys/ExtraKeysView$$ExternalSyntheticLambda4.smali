.class public final synthetic Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

.field public final synthetic f$1:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

.field public final synthetic f$2:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda4;->f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda4;->f$1:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    iput-object p3, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda4;->f$2:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda4;->f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda4;->f$1:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    iget-object v2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda4;->f$2:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1, v2, p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->lambda$reload$0$com-termux-shared-termux-extrakeys-ExtraKeysView(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V

    return-void
.end method
