.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pGms2oPv9SIe4Nj0Mi8RhDcnLSY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pGms2oPv9SIe4Nj0Mi8RhDcnLSY;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iput p2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pGms2oPv9SIe4Nj0Mi8RhDcnLSY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pGms2oPv9SIe4Nj0Mi8RhDcnLSY;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pGms2oPv9SIe4Nj0Mi8RhDcnLSY;->f$1:I

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$setRotation$8(Lcom/samsung/android/server/virtualspace/VSScreen;I)V

    return-void
.end method
