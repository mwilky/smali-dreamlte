.class final Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector$ThroughputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThroughputInfoData"
.end annotation


# static fields
.field private static final percent:[D


# instance fields
.field private rx_times:[J

.field private rx_total_bytes:J

.field private tx_times:[J

.field private tx_total_bytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fd3333333333333L    # 0.3
        0x3fe3333333333333L    # 0.6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    sget-object v2, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SluggishDetector$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;-><init>()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->calcThroughputInfoData(Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$5700()[D
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->add(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->divide(I)V

    return-void
.end method

.method private add(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    iget-wide v2, p1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    iget-wide v2, p1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    return-void
.end method

.method private calcThroughputInfoData(Ljava/util/LinkedList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    if-eq v2, v3, :cond_9

    invoke-static {v3}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4800(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4800(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    iget-wide v4, v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-lez v4, :cond_4

    sget-object v4, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v4, v4

    new-array v4, v4, [J

    move v9, v5

    :goto_0
    sget-object v10, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v10, v10

    if-ge v9, v10, :cond_0

    iget-wide v10, v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    long-to-double v10, v10

    sget-object v12, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    aget-wide v12, v12, v9

    mul-double/2addr v10, v12

    double-to-long v10, v10

    aput-wide v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    const/4 v10, 0x0

    move v11, v10

    move v10, v8

    :goto_1
    array-length v12, v9

    if-ge v10, v12, :cond_4

    :goto_2
    sget-object v12, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v12, v12

    if-ge v11, v12, :cond_2

    aget-object v12, v9, v10

    invoke-static {v12}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4800(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v12

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4800(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    aget-wide v14, v4, v11

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    goto :goto_3

    :cond_1
    iget-object v12, v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-object v13, v9, v10

    invoke-static {v13}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4900(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v13

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4900(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    aput-wide v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    sget-object v12, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v12, v12

    if-lt v11, v12, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    invoke-static {v3}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$5000(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v9

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$5000(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    iput-wide v9, v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    iget-wide v9, v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    cmp-long v4, v9, v6

    if-lez v4, :cond_9

    sget-object v4, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v4, v4

    new-array v4, v4, [J

    nop

    :goto_5
    sget-object v6, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    if-ge v5, v6, :cond_5

    iget-wide v6, v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    long-to-double v6, v6

    sget-object v9, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    aget-wide v9, v9, v5

    mul-double/2addr v6, v9

    double-to-long v6, v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    const/4 v6, 0x0

    nop

    :goto_6
    move v7, v8

    array-length v8, v5

    if-ge v7, v8, :cond_9

    :goto_7
    sget-object v8, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v8, v8

    if-ge v6, v8, :cond_7

    aget-object v8, v5, v7

    invoke-static {v8}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$5000(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v8

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$5000(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    aget-wide v10, v4, v6

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    goto :goto_8

    :cond_6
    iget-object v8, v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-object v9, v5, v7

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4900(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v9

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4900(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    aput-wide v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    sget-object v8, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v8, v8

    if-lt v6, v8, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 v8, v7, 0x1

    goto :goto_6

    :cond_9
    :goto_9
    return-void
.end method

.method private divide(I)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-wide v2, v1, v0

    int-to-long v4, p1

    div-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-wide v2, v1, v0

    int-to-long v4, p1

    div-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-wide v5, v1, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-wide v4, v1, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
