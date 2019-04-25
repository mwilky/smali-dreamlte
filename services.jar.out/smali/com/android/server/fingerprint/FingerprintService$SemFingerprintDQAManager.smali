.class Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemFingerprintDQAManager"
.end annotation


# static fields
.field private static mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;


# instance fields
.field private mBigDataNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPreviousSavedTime:J

.field private mPreviousSentTime:J

.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mPreviousSentTime:J

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mPreviousSavedTime:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->initBigFeatures()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->checkBigFeaturesSaved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->putBigFeatures()V

    :cond_0
    return-void
.end method


# virtual methods
.method checkBigFeaturesSaved()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->get()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "checkBigFeaturesSaved : no saved values!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method get()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semGetBigDataCounts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HQM get="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method getAndAddBigFeatures()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->get()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "getAndAddBigFeatures : no saved values!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/lit8 v4, v3, 0x5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "getAndAddBigFeatures : falied"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method initBigFeatures()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPIS"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPIF"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPGT"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPQP"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPQI"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPQD"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPQS"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPQF"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPQW"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPQL"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    const-string v1, "FPMV"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method needToSaveBigFeatures()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mPreviousSavedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mPreviousSavedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mPreviousSavedTime:J

    const/4 v0, 0x1

    return v0
.end method

.method needToSendBigFeatures()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mPreviousSentTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mPreviousSentTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mPreviousSentTime:J

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mPreviousSavedTime:J

    const/4 v0, 0x1

    return v0
.end method

.method preprocessBigdata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->needToSendBigFeatures()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->getAndAddBigFeatures()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->sendBigFeatures()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->initBigFeatures()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->putBigFeatures()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->needToSaveBigFeatures()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->getAndAddBigFeatures()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->putBigFeatures()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->initBigFeatures()V

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->sendFingerprintBigdata(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method put(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->semSaveBigDataCounts(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HQM put="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method putBigFeatures()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "putBigFeatures : falied"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->put(Ljava/lang/String;)V

    return-void
.end method

.method sendBigFeatures()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mBigDataNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->sendFingerprintBigdata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method sendFingerprintBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const/4 v13, 0x0

    const-string v14, "BFS"

    const-string/jumbo v15, "ph"

    const-string v16, "0.0"

    const-string/jumbo v17, "sec"

    const-string v18, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendFingerprintBigdata [HQM]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    move v2, v13

    move-object v3, v14

    move-object v4, v11

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semSendFingerprintBigdata() mSemHqmManager is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
