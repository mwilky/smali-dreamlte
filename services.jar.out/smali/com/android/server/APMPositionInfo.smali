.class public Lcom/android/server/APMPositionInfo;
.super Ljava/lang/Object;
.source "APMPositionInfo.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "APMPositionInfo_APM"

.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL

.field private static final MIN_TIME_BW_UPDATES:J = 0xea60L

.field private static final TIMEOUT:I = 0x9c4

.field private static instance:Lcom/android/server/APMPositionInfo;


# instance fields
.field private locationManager:Landroid/location/LocationManager;

.field private final mContext:Landroid/content/Context;

.field private mLatitude:D

.field private mLocation:Landroid/location/Location;

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/APMPositionInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getLocationManager(Landroid/content/Context;)Lcom/android/server/APMPositionInfo;
    .locals 1

    sget-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/APMPositionInfo;

    invoke-direct {v0, p0}, Lcom/android/server/APMPositionInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    :cond_0
    sget-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    return-object v0
.end method


# virtual methods
.method public callLocationInfo(Landroid/content/Context;)Z
    .locals 17

    move-object/from16 v8, p0

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v10, v0

    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    iput-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string/jumbo v0, "location"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object/from16 v11, p1

    :try_start_1
    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_c

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    move v12, v0

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    move v13, v0

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "passive"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    move v14, v0

    const-string v0, "APMPositionInfo_APM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNetworkEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isGPSEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isPassiveEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_3

    if-nez v12, :cond_3

    if-nez v14, :cond_3

    const-string v0, "APMPositionInfo_APM"

    const-string v2, "Can\'t get Location information"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v9, 0x0

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v10, 0x0

    :cond_2
    return v0

    :cond_3
    const-wide/16 v6, 0x9c4

    if-eqz v14, :cond_6

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :try_start_3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "APMLocationUpdates"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v15, v0

    :try_start_4
    invoke-virtual {v15}, Landroid/os/HandlerThread;->start()V

    iget-object v1, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "passive"

    const-wide/32 v3, 0xea60

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v8

    move-object v7, v0

    :try_start_5
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v6, 0x9c4

    :try_start_6
    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string v0, "APMPositionInfo_APM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passiveenabled.... mLatitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " mLongitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_4
    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v15

    goto :goto_2

    :catchall_0
    move-exception v0

    const-wide/16 v6, 0x9c4

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    move-object v1, v15

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :catch_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_5

    :try_start_a
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :cond_6
    move-object v15, v1

    :goto_3
    if-eqz v13, :cond_9

    :try_start_b
    monitor-enter p0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "APMLocationUpdates"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    iget-object v1, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    const-wide/32 v3, 0xea60

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v6, v8

    move-object v7, v0

    :try_start_d
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const-wide/16 v6, 0x9c4

    :try_start_e
    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_7

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string v0, "APMPositionInfo_APM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkenabled.... mLatitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " mLongitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_7
    goto :goto_5

    :catchall_3
    move-exception v0

    const-wide/16 v6, 0x9c4

    goto :goto_4

    :catchall_4
    move-exception v0

    :goto_4
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_5
    move-exception v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v15

    goto/16 :goto_8

    :catch_3
    move-exception v0

    if-eqz v9, :cond_8

    :try_start_12
    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    move-object v9, v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_9
    :goto_5
    if-eqz v12, :cond_d

    :try_start_13
    monitor-enter p0
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "APMLocationUpdates"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    iget-object v1, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    const-wide/32 v3, 0xea60

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v6, v8

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {v8, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string v0, "APMPositionInfo_APM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gpsenabled.... mLatitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " mLongitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :cond_a
    goto :goto_6

    :catchall_6
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :catch_4
    move-exception v0

    if-eqz v10, :cond_b

    :try_start_18
    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    move-object v10, v1

    :cond_b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    goto :goto_6

    :cond_c
    move-object v15, v1

    :cond_d
    :goto_6
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Landroid/os/HandlerThread;->quit()Z

    const/4 v15, 0x0

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v9, 0x0

    :cond_f
    if-eqz v10, :cond_12

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object/from16 v11, p1

    :goto_7
    move-object v15, v1

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v11, p1

    :goto_8
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    move-object v15, v0

    goto :goto_9

    :cond_10
    move-object v15, v1

    :goto_9
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    move-object v9, v0

    :cond_11
    if-eqz v10, :cond_12

    :goto_a
    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v10, 0x0

    :cond_12
    const/4 v0, 0x1

    return v0

    :catchall_8
    move-exception v0

    goto :goto_7

    :goto_b
    if-eqz v15, :cond_13

    invoke-virtual {v15}, Landroid/os/HandlerThread;->quit()Z

    const/4 v15, 0x0

    :cond_13
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v9, 0x0

    :cond_14
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v10, 0x0

    :cond_15
    throw v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    :cond_0
    iget-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    :cond_0
    iget-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    return-wide v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public stopUsingLocationService()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method
