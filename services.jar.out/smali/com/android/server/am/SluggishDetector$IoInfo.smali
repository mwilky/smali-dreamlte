.class final Lcom/android/server/am/SluggishDetector$IoInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    }
.end annotation


# static fields
.field private static final IOSTATS_PATH:Ljava/lang/String; = "/proc/iostats"

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

    const-class v1, Lcom/android/server/am/SluggishDetector$IoInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$IoInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$6600()Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$IoInfo;->getIoInfoData()Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v0

    return-object v0
.end method

.method private static getIoInfoData()Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .locals 6

    new-instance v0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    const-string v1, "/proc/iostats"

    invoke-static {v1}, Lcom/android/server/am/SluggishDetector;->access$5200(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$IoInfo;->getIoInfoDataLineValue(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->access$5900(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getIoInfoDataLineValue(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .locals 11

    new-instance v0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0xa

    const/4 v7, 0x6

    if-eq v2, v7, :cond_0

    if-ne v2, v6, :cond_2

    :cond_0
    if-ne v2, v7, :cond_1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->access$6002(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;J)J

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2

    :cond_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->access$6102(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;J)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_3

    :goto_2
    nop

    sget-object v8, Lcom/android/server/am/SluggishDetector$IoInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getValue() - parseLong : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    if-ne v2, v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-object v0
.end method
