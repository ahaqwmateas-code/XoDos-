.class public Lcom/termux/x11/controller/core/WineRegistryEditor$Location;
.super Ljava/lang/Object;
.source "WineRegistryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/controller/core/WineRegistryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public final end:I

.field public final offset:I

.field public final start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/termux/x11/controller/core/WineRegistryEditor$Location;->offset:I

    .line 32
    iput p2, p0, Lcom/termux/x11/controller/core/WineRegistryEditor$Location;->start:I

    .line 33
    iput p3, p0, Lcom/termux/x11/controller/core/WineRegistryEditor$Location;->end:I

    .line 34
    return-void
.end method


# virtual methods
.method public length()I
    .locals 2

    .line 37
    iget v0, p0, Lcom/termux/x11/controller/core/WineRegistryEditor$Location;->end:I

    iget v1, p0, Lcom/termux/x11/controller/core/WineRegistryEditor$Location;->start:I

    sub-int/2addr v0, v1

    return v0
.end method
