.class public Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "NfcConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;,
        Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_RW_P2P_STATE_CHANGED:Ljava/lang/String; = "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field private static final ACTION_NFC_SERVICE_STARTED:Ljava/lang/String; = "com.sec.android.nfc.AUTH_READY"

.field private static final ACTION_NFC_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ADAPTER_STATE_OFF:I = 0x1

.field public static final ADAPTER_STATE_ON:I = 0x3

.field public static final ADAPTER_STATE_TURNING_OFF:I = 0x4

.field public static final ADAPTER_STATE_TURNING_ON:I = 0x2

.field public static final EXTRA_ADAPTER_RW_P2P_STATE:Ljava/lang/String; = "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field private static final EXTRA_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final NFC_NOT_SUPPORT_LED_COVER:I = 0x0

.field public static final NFC_SUPPORT_LED_COVER:I = 0x1

.field public static final SEM_STATE_CARD_MODE_ON:I = 0x5

.field public static final STATE_RW_P2P_OFF:I = 0xb

.field public static final STATE_RW_P2P_ON:I = 0xd

.field public static final STATE_RW_P2P_TURNING_OFF:I = 0xe

.field public static final STATE_RW_P2P_TURNING_ON:I = 0xc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

.field private mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

.field private mPrevState:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I

    iput v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcFeature()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    new-instance v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.nfc.AUTH_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    return p1
.end method

.method private disableInternal()Z
    .locals 7

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcState()I

    move-result v0

    iget v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :try_start_0
    iget v3, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    sget-object v2, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableInternal : can\'t disable currentState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->semEnable()Z

    move-result v6

    move v3, v6

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    move-result v6

    move v5, v6

    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    move v2, v4

    nop

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->semDisable()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :cond_4
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableInternal :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method private enableInternal(Z)Z
    .locals 6

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcState()I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableInternal : can\'t enable currentState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    move-result v1

    nop

    :goto_0
    move v2, v1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semEnable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :cond_2
    :goto_2
    goto :goto_4

    :goto_3
    nop

    sget-object v3, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableInternal :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    :cond_3
    return v2
.end method

.method private getNfcAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getNfcState()I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->semGetAdapterState()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNfcState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0xc8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private sendStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V

    :cond_0
    return v1
.end method

.method public disable()Z
    .locals 2

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->disableInternal()Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, " Current NfcConnectivity state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrevState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enable()Z
    .locals 2

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnabledInternal:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcFeature()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcFeature()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method public openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->startCoverAuth()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendStopAuth()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->stopCoverAuth()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public sendStopUsbAuth()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public sendSync([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSync, payload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->transceiveAuthData([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
