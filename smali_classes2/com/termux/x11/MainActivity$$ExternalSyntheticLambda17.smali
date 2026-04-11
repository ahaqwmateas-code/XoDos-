.class public final synthetic Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/x11/LorieView$Callback;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/MainActivity;

.field public final synthetic f$1:Lcom/termux/x11/LorieView;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/LorieView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda17;->f$0:Lcom/termux/x11/MainActivity;

    iput-object p2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda17;->f$1:Lcom/termux/x11/LorieView;

    return-void
.end method


# virtual methods
.method public final changed(IIII)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda17;->f$0:Lcom/termux/x11/MainActivity;

    iget-object v1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda17;->f$1:Lcom/termux/x11/LorieView;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/termux/x11/MainActivity;->lambda$onCreate$6$com-termux-x11-MainActivity(Lcom/termux/x11/LorieView;IIII)V

    return-void
.end method
