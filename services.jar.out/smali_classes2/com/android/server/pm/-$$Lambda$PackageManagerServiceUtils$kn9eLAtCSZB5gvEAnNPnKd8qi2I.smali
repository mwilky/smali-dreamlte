.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$kn9eLAtCSZB5gvEAnNPnKd8qi2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$kn9eLAtCSZB5gvEAnNPnKd8qi2I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$kn9eLAtCSZB5gvEAnNPnKd8qi2I;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$kn9eLAtCSZB5gvEAnNPnKd8qi2I;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$kn9eLAtCSZB5gvEAnNPnKd8qi2I;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$kn9eLAtCSZB5gvEAnNPnKd8qi2I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$getPackagesForDexopt$2(Landroid/content/pm/PackageParser$Package;)Z

    move-result p1

    return p1
.end method
