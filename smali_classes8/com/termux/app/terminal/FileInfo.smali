.class public Lcom/termux/app/terminal/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private final isDirectory:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isDirectory"    # Z

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/termux/app/terminal/FileInfo;->name:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/termux/app/terminal/FileInfo;->path:Ljava/lang/String;

    .line 11
    iput-boolean p3, p0, Lcom/termux/app/terminal/FileInfo;->isDirectory:Z

    .line 12
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/termux/app/terminal/FileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/termux/app/terminal/FileInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/termux/app/terminal/FileInfo;->isDirectory:Z

    return v0
.end method
