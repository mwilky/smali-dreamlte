.class public final synthetic Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$iVGVcx2Ee37igl6ebl_htq_WO9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$iVGVcx2Ee37igl6ebl_htq_WO9o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$iVGVcx2Ee37igl6ebl_htq_WO9o;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$iVGVcx2Ee37igl6ebl_htq_WO9o;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$iVGVcx2Ee37igl6ebl_htq_WO9o;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$iVGVcx2Ee37igl6ebl_htq_WO9o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/TaskChangeNotificationController;->lambda$new$10(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method
