.class public Lcom/att/iqi/lib/Timestamp;
.super Ljava/lang/Object;


# instance fields
.field private a:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/att/iqi/lib/Timestamp;->a:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/att/iqi/lib/Timestamp;->a:J

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/att/iqi/lib/Timestamp;->a:J

    return-wide v0
.end method
