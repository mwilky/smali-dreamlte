.class final Lcom/android/server/am/SluggishDetector$MemoryInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;,
        Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/SluggishDetector$MemoryInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$MemoryInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$8000()Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$MemoryInfo;->getMeminfo()Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100()Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$MemoryInfo;->getMeminfoExtra()Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v0

    return-object v0
.end method

.method private static getMeminfo()Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;
    .locals 2

    new-instance v0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->access$6500(Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;)V

    return-object v0
.end method

.method private static getMeminfoExtra()Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;
    .locals 2

    new-instance v0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->access$6300(Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;)V

    return-object v0
.end method
