.class final Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector$IoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IoInfoData"
.end annotation


# instance fields
.field private mReadByte:J

.field private mWriteByte:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SluggishDetector$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;-><init>()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->add(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    return-wide p1
.end method

.method static synthetic access$6102(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    return-wide p1
.end method

.method static synthetic access$7100(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->sub(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->divide(I)V

    return-void
.end method

.method private add(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    iget-wide v2, p1, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    iget-wide v2, p1, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    return-void
.end method

.method private divide(I)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    :cond_0
    return-void
.end method

.method private sub(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    iget-wide v2, p1, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    iget-wide v2, p1, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
