.class Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;
.super Ljava/lang/Object;
.source "TAProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/ta/TAProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TAInfo"
.end annotation


# instance fields
.field public maxRecvRespSize:I

.field public maxSendCmdSize:I

.field public ta:Lcom/android/server/knox/ddar/ta/TZNative;

.field public taId:I

.field public taProcessName:Ljava/lang/String;

.field public taRootName:Ljava/lang/String;

.field public taTechnology:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/knox/ddar/ta/TAProxy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;-><init>()V

    return-void
.end method
