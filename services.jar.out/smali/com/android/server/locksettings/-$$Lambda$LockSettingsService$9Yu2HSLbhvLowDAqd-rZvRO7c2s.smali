.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9Yu2HSLbhvLowDAqd-rZvRO7c2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:[B

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9Yu2HSLbhvLowDAqd-rZvRO7c2s;->f$0:[B

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9Yu2HSLbhvLowDAqd-rZvRO7c2s;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9Yu2HSLbhvLowDAqd-rZvRO7c2s;->f$0:[B

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9Yu2HSLbhvLowDAqd-rZvRO7c2s;->f$1:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$doSyntheticPasswordFullMigrationAsync$18([BILcom/android/server/SdpManagerService;)V

    return-void
.end method
