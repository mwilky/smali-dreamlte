.class Lcom/android/server/power/ShutdownThread$13;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$13;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    iput p5, p0, Lcom/android/server/power/ShutdownThread$13;->val$timeout:I

    iput-object p6, p0, Lcom/android/server/power/ShutdownThread$13;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "ShutdownThread"

    const-string v1, "!@Start shutdown radios"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.deviceOffReq"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.radio.shutdown"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    if-nez v3, :cond_2

    const-string v6, "ShutdownThread"

    const-string v7, "Disabling WiFi..."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/16 v7, 0xe6

    iput v7, v6, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_2
    const-string v6, "ShutdownThread"

    const-string v7, "Waiting for NFC, Wi-Fi and Radio..."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const/4 v6, 0x2

    :try_start_0
    invoke-interface {v0, v6}, Landroid/nfc/INfcAdapter;->doNciLogDump(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    const-string v7, "ShutdownThread"

    const-string v8, "NullPointerException because of nci"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v6

    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException during nci log writing"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    nop

    :goto_3
    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v6

    if-ne v6, v5, :cond_4

    goto :goto_4

    :cond_4
    move v6, v4

    goto :goto_5

    :catch_2
    move-exception v6

    goto :goto_6

    :cond_5
    :goto_4
    move v6, v5

    :goto_5
    if-nez v6, :cond_6

    const-string v7, "ShutdownThread"

    const-string v8, "Turning off NFC..."

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :goto_6
    nop

    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException during NFC shutdown"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    move v6, v5

    goto :goto_8

    :cond_6
    :goto_7
    nop

    :goto_8
    nop

    if-eqz v2, :cond_7

    :try_start_2
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_9

    :catch_3
    move-exception v7

    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during bluetooth permanent log dump"

    invoke-static {v8, v9, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_a

    :cond_7
    :goto_9
    nop

    :goto_a
    if-eqz v1, :cond_9

    :try_start_3
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_b

    :cond_8
    move v7, v4

    goto :goto_c

    :catch_4
    move-exception v7

    goto :goto_d

    :cond_9
    :goto_b
    move v7, v5

    :goto_c
    if-nez v7, :cond_a

    const-string v8, "ShutdownThread"

    const-string v9, "Turning off cellular radios..."

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_e

    :goto_d
    nop

    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during radio shutdown"

    invoke-static {v8, v9, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    nop

    move v7, v5

    goto :goto_f

    :cond_a
    :goto_e
    nop

    :goto_f
    nop

    const-string v8, "ShutdownThread"

    const-string v9, "Waiting for NFC and Radio..."

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v8, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    :goto_10
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_10

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Z

    move-result v10

    if-eqz v10, :cond_b

    iget v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$timeout:I

    int-to-long v10, v10

    sub-long/2addr v10, v8

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    mul-double/2addr v10, v12

    iget v12, p0, Lcom/android/server/power/ShutdownThread$13;->val$timeout:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    double-to-int v10, v10

    invoke-static {v10}, Lcom/android/server/power/ShutdownThread;->access$802(I)I

    const/4 v10, 0x6

    invoke-static {v10}, Lcom/android/server/power/ShutdownThread;->access$812(I)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/server/power/ShutdownThread;->access$4300(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_b
    if-nez v7, :cond_c

    :try_start_4
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v10
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    xor-int/2addr v10, v5

    move v7, v10

    goto :goto_11

    :catch_5
    move-exception v10

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v7, 0x1

    :goto_11
    if-eqz v7, :cond_c

    const-string v10, "ShutdownThread"

    const-string v11, "!@Radio turned off."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez v6, :cond_e

    :try_start_5
    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    if-ne v10, v5, :cond_d

    move v10, v5

    goto :goto_12

    :cond_d
    move v10, v4

    :goto_12
    move v6, v10

    goto :goto_13

    :catch_6
    move-exception v10

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v6, 0x1

    :goto_13
    if-eqz v6, :cond_e

    const-string v10, "ShutdownThread"

    const-string v11, "!@NFC turned off."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v7, :cond_f

    if-eqz v6, :cond_f

    const-string v10, "ShutdownThread"

    const-string v11, "!@NFC, Radio and modem shutdown complete."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$done:[Z

    aput-boolean v5, v10, v4

    goto :goto_15

    :cond_f
    const-string v10, "ShutdownThread"

    const-string v11, "!@before sleep"

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x1f4

    :try_start_6
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_14

    :catch_7
    move-exception v10

    const-string v11, "ShutdownThread"

    const-string v12, "InterruptedException"

    invoke-static {v11, v12, v10}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_14
    const-string v10, "ShutdownThread"

    const-string v11, "!@after sleep"

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@[Phone off retry:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " radio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " nfcOff="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v8, v10, v12

    goto/16 :goto_10

    :cond_10
    :goto_15
    return-void
.end method
