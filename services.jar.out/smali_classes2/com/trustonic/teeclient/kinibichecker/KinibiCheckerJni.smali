.class public Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;
.super Ljava/lang/Object;
.source "KinibiCheckerJni.java"


# instance fields
.field private mCmp:Ljava/lang/String;

.field private mContainer:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDrApi:Ljava/lang/String;

.field private mInfoList:[Ljava/lang/String;

.field private mMcConfig:Ljava/lang/String;

.field private mMci:Ljava/lang/String;

.field private mMclf:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mSo:Ljava/lang/String;

.field private mSuid:Ljava/lang/String;

.field private mTlApi:Ljava/lang/String;

.field private returnCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TeeClient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Suid"

    const-string v1, "ProductId"

    const-string v2, "Control Interface"

    const-string v3, "Secure Object"

    const-string v4, "Load Format"

    const-string v5, "Container"

    const-string v6, "MobiConfig"

    const-string v7, "Trustlet API"

    const-string v8, "Driver API"

    const-string v9, "CMP"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->mInfoList:[Ljava/lang/String;

    iput-object p1, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->getInfo(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->returnCode:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->mInfoList:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public native getInfo(Landroid/content/Context;II)I
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    iget v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->returnCode:I

    return v0
.end method

.method public getSuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->mSuid:Ljava/lang/String;

    return-object v0
.end method
