.class public final synthetic Lcom/android/server/am/-$$Lambda$BroadcastQueue$_qFXho-5DDYHJFgSir4_enNbcGs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/BroadcastQueue;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/os/DropBoxManager;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$_qFXho-5DDYHJFgSir4_enNbcGs;->f$0:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$_qFXho-5DDYHJFgSir4_enNbcGs;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$_qFXho-5DDYHJFgSir4_enNbcGs;->f$2:Landroid/os/DropBoxManager;

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$_qFXho-5DDYHJFgSir4_enNbcGs;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$_qFXho-5DDYHJFgSir4_enNbcGs;->f$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$_qFXho-5DDYHJFgSir4_enNbcGs;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$_qFXho-5DDYHJFgSir4_enNbcGs;->f$2:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$_qFXho-5DDYHJFgSir4_enNbcGs;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue;->lambda$addDelayedBrToDropBox$1(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V

    return-void
.end method
