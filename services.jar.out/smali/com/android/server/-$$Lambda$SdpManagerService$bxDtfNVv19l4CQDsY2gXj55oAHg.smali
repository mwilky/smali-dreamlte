.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:[B

.field private final synthetic f$1:J

.field private final synthetic f$2:[B

.field private final synthetic f$3:J

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>([BJ[BJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$0:[B

    iput-wide p2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$1:J

    iput-object p4, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$2:[B

    iput-wide p5, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$3:J

    iput p7, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$4:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$0:[B

    iget-wide v1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$1:J

    iget-object v3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$2:[B

    iget-wide v4, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$3:J

    iget v6, p0, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;->f$4:I

    move-object v7, p1

    check-cast v7, Lcom/android/internal/widget/ILockSettings;

    invoke-static/range {v0 .. v7}, Lcom/android/server/SdpManagerService;->lambda$changeToken$1([BJ[BJILcom/android/internal/widget/ILockSettings;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
