.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9iDSzzwBPHAi1kO1yciF1MCfPPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:[B

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9iDSzzwBPHAi1kO1yciF1MCfPPE;->f$0:[B

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9iDSzzwBPHAi1kO1yciF1MCfPPE;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9iDSzzwBPHAi1kO1yciF1MCfPPE;->f$0:[B

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9iDSzzwBPHAi1kO1yciF1MCfPPE;->f$1:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$setLockCredentialWithLegacyToken$31([BILcom/android/server/SdpManagerService;)[B

    move-result-object p1

    return-object p1
.end method
