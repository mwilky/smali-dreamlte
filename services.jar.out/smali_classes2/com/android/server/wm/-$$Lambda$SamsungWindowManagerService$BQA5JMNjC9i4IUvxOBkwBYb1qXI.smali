.class public final synthetic Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$BQA5JMNjC9i4IUvxOBkwBYb1qXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$BQA5JMNjC9i4IUvxOBkwBYb1qXI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$BQA5JMNjC9i4IUvxOBkwBYb1qXI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$BQA5JMNjC9i4IUvxOBkwBYb1qXI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$BQA5JMNjC9i4IUvxOBkwBYb1qXI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$BQA5JMNjC9i4IUvxOBkwBYb1qXI;

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

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/SamsungWindowManagerService;->lambda$takeScreenshotToTargetWindow$5(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
