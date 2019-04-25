.class public Lcom/samsung/android/knox/net/AuthConfig;
.super Ljava/lang/Object;
.source "AuthConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static ANY_HOST:Ljava/lang/String;

.field public static ANY_PORT:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHost:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "*"

    sput-object v0, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    new-instance v0, Lcom/samsung/android/knox/net/AuthConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/AuthConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/AuthConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/AuthConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/AuthConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host, username and password cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    sget v0, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    iput v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username and password cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/knox/net/AuthConfig;

    iget-object v3, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_4

    return v1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_6

    return v1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget v3, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    iget v4, v2, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_9

    return v1

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget-object v4, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget v4, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget-object v1, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_2
    add-int/2addr v2, v5

    return v2
.end method

.method public isValid()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    iget v2, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    iget v2, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    if-ne v0, v2, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/net/AuthConfig;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
