.class public Lcom/samsung/android/knox/sdp/core/SdpException;
.super Ljava/lang/Exception;
.source "SdpException.java"


# instance fields
.field private mErrorCode:I

.field private mTimeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpErrno;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpErrno;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    iput p2, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return-void
.end method

.method private static classify(I)I
    .locals 2

    move v0, p0

    const/16 v1, -0x63

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/16 v0, -0x63

    nop

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return v0
.end method
