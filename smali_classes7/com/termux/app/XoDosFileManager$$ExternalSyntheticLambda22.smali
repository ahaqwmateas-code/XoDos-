.class public final synthetic Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/XoDosFileManager;

.field public final synthetic f$1:[Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/XoDosFileManager;[Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda22;->f$0:Lcom/termux/app/XoDosFileManager;

    iput-object p2, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda22;->f$1:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda22;->f$0:Lcom/termux/app/XoDosFileManager;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda22;->f$1:[Ljava/io/File;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/termux/app/XoDosFileManager;->lambda$loadDirectory$8$com-termux-app-XoDosFileManager([Ljava/io/File;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
