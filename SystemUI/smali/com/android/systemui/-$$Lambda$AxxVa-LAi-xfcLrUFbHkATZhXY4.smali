.class public final synthetic Lcom/android/systemui/-$$Lambda$AxxVa-LAi-xfcLrUFbHkATZhXY4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$AxxVa-LAi-xfcLrUFbHkATZhXY4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$AxxVa-LAi-xfcLrUFbHkATZhXY4;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$AxxVa-LAi-xfcLrUFbHkATZhXY4;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$AxxVa-LAi-xfcLrUFbHkATZhXY4;->INSTANCE:Lcom/android/systemui/-$$Lambda$AxxVa-LAi-xfcLrUFbHkATZhXY4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/DebugUiOffloadThread;

    invoke-direct {v0}, Lcom/android/systemui/DebugUiOffloadThread;-><init>()V

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
