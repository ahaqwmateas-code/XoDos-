.class public Lcom/termux/x11/controller/core/WineInfo;
.super Ljava/lang/Object;
.source "WineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/termux/x11/controller/core/WineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

.field private static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private arch:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final subversion:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/termux/x11/controller/core/WineInfo;

    const-string v1, "9.2"

    const-string v2, "x86_64"

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/core/WineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    .line 16
    const-string v0, "^wine\\-([0-9\\.]+)\\-?([0-9\\.]+)?\\-(x86|x86_64)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/controller/core/WineInfo;->pattern:Ljava/util/regex/Pattern;

    .line 88
    new-instance v0, Lcom/termux/x11/controller/core/WineInfo$1;

    invoke-direct {v0}, Lcom/termux/x11/controller/core/WineInfo$1;-><init>()V

    sput-object v0, Lcom/termux/x11/controller/core/WineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->version:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->subversion:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->arch:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->path:Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/termux/x11/controller/core/WineInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/termux/x11/controller/core/WineInfo$1;

    .line 14
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/core/WineInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "arch"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/termux/x11/controller/core/WineInfo;->version:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->subversion:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/termux/x11/controller/core/WineInfo;->arch:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->path:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "subversion"    # Ljava/lang/String;
    .param p3, "arch"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/termux/x11/controller/core/WineInfo;->version:Ljava/lang/String;

    .line 31
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->subversion:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/termux/x11/controller/core/WineInfo;->arch:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/termux/x11/controller/core/WineInfo;->path:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static fromIdentifier(Landroid/content/Context;Ljava/lang/String;)Lcom/termux/x11/controller/core/WineInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identifier"    # Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    invoke-virtual {v0}, Lcom/termux/x11/controller/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcom/termux/x11/controller/core/WineInfo;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/usr/glibc/"

    const-string v3, "opt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v1, "installedWineDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Lcom/termux/x11/controller/core/WineInfo;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/termux/x11/controller/core/WineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 114
    .end local v1    # "installedWineDir":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    return-object v1
.end method

.method public static isMainWineVersion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "wineVersion"    # Ljava/lang/String;

    .line 118
    if-eqz p0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    invoke-virtual {v0}, Lcom/termux/x11/controller/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public fullVersion()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/x11/controller/core/WineInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/controller/core/WineInfo;->subversion:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/x11/controller/core/WineInfo;->subversion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArch()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->arch:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutable(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wow64Mode"    # Z

    .line 56
    sget-object v0, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    const-string v1, "wine64"

    const-string v2, "wine"

    if-ne p0, v0, :cond_3

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.termux/files/usr/glibc/"

    const-string v4, "opt/wine/bin"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v0, "wineBinDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v3, "wineBinFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "wine-preloader"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v4, "winePreloaderBinFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    if-eqz p2, :cond_0

    const-string v6, "wine-wow64"

    goto :goto_0

    :cond_0
    const-string v6, "wine32"

    :goto_0
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lcom/termux/x11/controller/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 62
    new-instance v5, Ljava/io/File;

    if-eqz p2, :cond_1

    const-string v6, "wine-preloader-wow64"

    goto :goto_1

    :cond_1
    const-string v6, "wine32-preloader"

    :goto_1
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/termux/x11/controller/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 63
    const/16 v5, 0x1f9

    invoke-static {v3, v5}, Lcom/termux/x11/controller/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 64
    invoke-static {v4, v5}, Lcom/termux/x11/controller/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 65
    if-eqz p2, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1

    .line 66
    .end local v0    # "wineBinDir":Ljava/io/File;
    .end local v3    # "wineBinFile":Ljava/io/File;
    .end local v4    # "winePreloaderBinFile":Ljava/io/File;
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/termux/x11/controller/core/WineInfo;->path:Ljava/lang/String;

    const-string v4, "/bin/wine64"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    return-object v1
.end method

.method public identifier()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wine-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/x11/controller/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    if-ne p0, v1, :cond_0

    const-string v1, "custom"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/termux/x11/controller/core/WineInfo;->arch:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWin64()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->arch:Ljava/lang/String;

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setArch(Ljava/lang/String;)V
    .locals 0
    .param p1, "arch"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/termux/x11/controller/core/WineInfo;->arch:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/x11/controller/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    if-ne p0, v1, :cond_0

    const-string v1, " (Custom)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->subversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->arch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/termux/x11/controller/core/WineInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return-void
.end method
