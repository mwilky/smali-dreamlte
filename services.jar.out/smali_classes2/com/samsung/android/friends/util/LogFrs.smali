.class public Lcom/samsung/android/friends/util/LogFrs;
.super Ljava/lang/Object;
.source "LogFrs.java"


# static fields
.field private static final DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final DEBUG_LEVEL_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field private static final LEVEL_DEBUG:I = 0x4

.field private static final LEVEL_ERROR:I = 0x1

.field private static final LEVEL_INFO:I = 0x3

.field private static final LEVEL_NONE:I = 0x0

.field private static final LEVEL_VERBOSE:I = 0x5

.field private static final LEVEL_WARN:I = 0x2

.field private static final TIME_DIFF:J = 0x12a05f200L

.field private static sCurLogLevel:I

.field private static sLateUpdated:J

.field private static sSafeString:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->internalLogLevel()I

    move-result v0

    sput v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->internalUseSafeString()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/friends/util/LogFrs;->sLateUpdated:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_2

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_2

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDateString(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRoBootDebugLevel()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRoDebugLevel()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafe(I)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    if-eqz v0, :cond_0

    const v0, 0xffffff

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static getSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    if-eqz v0, :cond_0

    const-string v0, "..."

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private static getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "FrsSvc"

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_2

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static internalLogLevel()I
    .locals 9

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_1
    move v0, v1

    const-string v1, "debug.mate.log.service"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v3, "none"

    const-string v4, "error"

    const-string/jumbo v5, "warning"

    const-string v6, "info"

    const-string v7, "debug"

    const-string/jumbo v8, "verbose"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v3, v4

    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v3, v4, :cond_4

    array-length v4, v2

    if-ge v3, v4, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method

.method private static internalUseSafeString()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "debug.mate.log.safe_string"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDebugLogLevel()Z
    .locals 2

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRoDebugLevelMid()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->getRoDebugLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->getRoBootDebugLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x494d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0x4948"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0x494d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0x4948"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public static logLevel()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    return v0
.end method

.method public static printThrowableStackTrace(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isDebugLogLevel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static updateLogLevel()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/friends/util/LogFrs;->sLateUpdated:J

    sub-long v2, v0, v2

    const-wide v4, 0x12a05f200L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->internalLogLevel()I

    move-result v2

    sput v2, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->internalUseSafeString()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    sput-wide v0, Lcom/samsung/android/friends/util/LogFrs;->sLateUpdated:J

    :cond_0
    return-void
.end method

.method public static useSafeString()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_2

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_2

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
