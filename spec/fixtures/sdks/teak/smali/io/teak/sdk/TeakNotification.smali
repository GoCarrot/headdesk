.class public Lio/teak/sdk/TeakNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/TeakNotification$a;
    }
.end annotation


# static fields
.field public static final TEAK_NOTIFICATION_CLEARED_INTENT_ACTION_SUFFIX:Ljava/lang/String; = ".intent.TEAK_NOTIFICATION_CLEARED"

.field public static final TEAK_NOTIFICATION_OPENED_INTENT_ACTION_SUFFIX:Ljava/lang/String; = ".intent.TEAK_NOTIFICATION_OPENED"

.field static final TEAK_NOTIFICATION_V0:I


# instance fields
.field public final bundle:Landroid/os/Bundle;

.field final display:Lio/teak/sdk/e/c;

.field final extras:Lio/teak/sdk/e/c;

.field final imageAssetA:Ljava/lang/String;

.field public isAnimated:Z

.field final longText:Ljava/lang/String;

.field final message:Ljava/lang/String;

.field notificationVersion:I

.field public platformId:I

.field final teakCreativeName:Ljava/lang/String;

.field final teakDeepLink:Ljava/lang/String;

.field public final teakNotifId:J

.field final teakRewardId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput v7, p0, Lio/teak/sdk/TeakNotification;->notificationVersion:I

    .line 732
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->message:Ljava/lang/String;

    .line 733
    const-string v0, "longText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->longText:Ljava/lang/String;

    .line 734
    const-string v0, "teakRewardId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->teakRewardId:Ljava/lang/String;

    .line 735
    const-string v0, "imageAssetA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->imageAssetA:Ljava/lang/String;

    .line 736
    const-string v0, "teakDeepLink"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->teakDeepLink:Ljava/lang/String;

    .line 737
    const-string v0, "teakCreativeName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->teakCreativeName:Ljava/lang/String;

    .line 738
    iput-boolean v7, p0, Lio/teak/sdk/TeakNotification;->isAnimated:Z

    .line 739
    iput-object p1, p0, Lio/teak/sdk/TeakNotification;->bundle:Landroid/os/Bundle;

    .line 743
    :try_start_0
    const-string v0, "extras"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 746
    :goto_0
    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->extras:Lio/teak/sdk/e/c;

    .line 749
    :try_start_1
    const-string v0, "version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/teak/sdk/TeakNotification;->notificationVersion:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 757
    :goto_1
    const-string v0, "versioned_content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 759
    :try_start_2
    new-instance v0, Lio/teak/sdk/e/a;

    const-string v2, "versioned_content"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/teak/sdk/e/a;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Lio/teak/sdk/e/a;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 761
    instance-of v3, v0, Lio/teak/sdk/e/c;

    if-eqz v3, :cond_0

    .line 762
    check-cast v0, Lio/teak/sdk/e/c;

    .line 764
    const-string v3, "version"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 765
    if-eqz v3, :cond_0

    .line 767
    const-string v4, "(\\d+)\\.(\\d+)\\.(\\d+).*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 768
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 769
    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 770
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 771
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 772
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v4, v5

    .line 775
    sget-object v3, Lio/teak/sdk/Teak;->MajorMinorRevision:[I

    invoke-direct {p0, v3, v4}, Lio/teak/sdk/TeakNotification;->compareMajorMinorRevision([I[I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-ltz v3, :cond_2

    :goto_3
    move-object v1, v0

    .line 781
    goto :goto_2

    .line 743
    :cond_1
    :try_start_3
    new-instance v0, Lio/teak/sdk/e/c;

    const-string v2, "extras"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 751
    :catch_1
    move-exception v0

    iput v7, p0, Lio/teak/sdk/TeakNotification;->notificationVersion:I

    goto/16 :goto_1

    .line 782
    :catch_2
    move-exception v0

    .line 783
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    .line 788
    :cond_2
    if-nez v1, :cond_3

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 790
    :try_start_4
    new-instance v0, Lio/teak/sdk/e/c;

    const-string v2, "display"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 796
    :goto_4
    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->display:Lio/teak/sdk/e/c;

    .line 798
    const-wide/16 v0, 0x0

    .line 800
    :try_start_5
    const-string v2, "teakNotifId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-wide v0

    .line 803
    :goto_5
    iput-wide v0, p0, Lio/teak/sdk/TeakNotification;->teakNotifId:J

    .line 805
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lio/teak/sdk/TeakNotification;->platformId:I

    .line 806
    return-void

    .line 791
    :catch_3
    move-exception v0

    .line 792
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    .line 793
    iput v7, p0, Lio/teak/sdk/TeakNotification;->notificationVersion:I

    :cond_3
    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_5

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method public static cancelAll()Ljava/util/concurrent/FutureTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.cancel_all.disabled"

    const-string v2, "Teak is disabled, ignoring cancelAll()."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 624
    const-string v0, "status"

    const-string v2, "error.teak.disabled"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$9;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$9;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 697
    :goto_0
    return-object v0

    .line 634
    :cond_0
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 635
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$10;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$10;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 646
    new-instance v2, Lio/teak/sdk/TeakNotification$11;

    invoke-direct {v2, v1, v0}, Lio/teak/sdk/TeakNotification$11;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V

    invoke-static {v2}, Lio/teak/sdk/b/e;->b(Lio/teak/sdk/b/e$a;)V

    goto :goto_0
.end method

.method public static cancelNotification(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
    .locals 3
    .param p0, "scheduleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    invoke-virtual {v0}, Lio/teak/sdk/TeakInstance;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.cancel.disabled"

    const-string v2, "Teak is disabled, ignoring cancelNotification()."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 534
    const-string v0, "status"

    const-string v2, "error.teak.disabled"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$5;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$5;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 615
    :goto_0
    return-object v0

    .line 544
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    :cond_2
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.cancel.error"

    const-string v2, "scheduleId cannot be null or empty"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 548
    const-string v0, "status"

    const-string v2, "error.parameter.creativeId"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$6;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$6;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 558
    :cond_3
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 559
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$7;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$7;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 570
    new-instance v2, Lio/teak/sdk/TeakNotification$8;

    invoke-direct {v2, p0, v1, v0}, Lio/teak/sdk/TeakNotification$8;-><init>(Ljava/lang/String;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V

    invoke-static {v2}, Lio/teak/sdk/b/e;->b(Lio/teak/sdk/b/e$a;)V

    goto :goto_0
.end method

.method private compareMajorMinorRevision([I[I)I
    .locals 5
    .param p1, "version"    # [I
    .param p2, "otherVersion"    # [I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 809
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_1

    .line 810
    aget v1, p1, v0

    aget v0, p2, v0

    sub-int v0, v1, v0

    .line 821
    :cond_0
    :goto_0
    return v0

    .line 813
    :cond_1
    aget v1, p1, v3

    aget v2, p2, v3

    if-eq v1, v2, :cond_2

    .line 814
    aget v0, p1, v3

    aget v1, p2, v3

    sub-int/2addr v0, v1

    goto :goto_0

    .line 817
    :cond_2
    aget v1, p1, v4

    aget v2, p2, v4

    if-eq v1, v2, :cond_0

    .line 818
    aget v0, p1, v4

    aget v1, p2, v4

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static scheduleNotification(Ljava/lang/String;J[Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
    .locals 7
    .param p0, "creativeId"    # Ljava/lang/String;
    .param p1, "delayInSeconds"    # J
    .param p3, "userIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    invoke-virtual {v0}, Lio/teak/sdk/TeakInstance;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.schedule.disabled"

    const-string v2, "Teak is disabled, ignoring scheduleNotification()."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    const-string v1, "status"

    const-string v2, "error.teak.disabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$17;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$17;-><init>(Ljava/util/Map;)V

    invoke-direct {v6, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 519
    :goto_0
    return-object v6

    .line 413
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    :cond_2
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.schedule.error"

    const-string v2, "creativeId cannot be null or empty"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 417
    const-string v1, "status"

    const-string v2, "error.parameter.creativeId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$18;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$18;-><init>(Ljava/util/Map;)V

    invoke-direct {v6, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 427
    :cond_3
    if-eqz p3, :cond_4

    array-length v0, p3

    if-gtz v0, :cond_5

    .line 428
    :cond_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.schedule.error"

    const-string v2, "userIds cannot be null or empty"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    const-string v1, "status"

    const-string v2, "error.parameter.userIds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$19;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$19;-><init>(Ljava/util/Map;)V

    invoke-direct {v6, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 441
    :cond_5
    const-wide/32 v0, 0x282170

    cmp-long v0, p1, v0

    if-gtz v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 442
    :cond_6
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.schedule.error"

    const-string v2, "delayInSeconds can not be negative, or greater than one month"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    const-string v1, "status"

    const-string v2, "error.parameter.delayInSeconds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$2;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$2;-><init>(Ljava/util/Map;)V

    invoke-direct {v6, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 455
    :cond_7
    new-instance v5, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 456
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lio/teak/sdk/TeakNotification$3;

    invoke-direct {v0, v5}, Lio/teak/sdk/TeakNotification$3;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-direct {v6, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 470
    new-instance v0, Lio/teak/sdk/TeakNotification$4;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lio/teak/sdk/TeakNotification$4;-><init>(Ljava/lang/String;J[Ljava/lang/String;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V

    invoke-static {v0}, Lio/teak/sdk/b/e;->b(Lio/teak/sdk/b/e$a;)V

    goto/16 :goto_0
.end method

.method public static scheduleNotification(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/FutureTask;
    .locals 8
    .param p0, "creativeId"    # Ljava/lang/String;
    .param p1, "defaultMessage"    # Ljava/lang/String;
    .param p2, "delayInSeconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    invoke-virtual {v0}, Lio/teak/sdk/TeakInstance;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.schedule.disabled"

    const-string v2, "Teak is disabled, ignoring scheduleNotification()."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    const-string v1, "status"

    const-string v2, "error.teak.disabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$1;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$1;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 386
    :goto_0
    return-object v7

    .line 280
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    :cond_2
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.schedule.error"

    const-string v2, "creativeId cannot be null or empty"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    const-string v1, "status"

    const-string v2, "error.parameter.creativeId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$12;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$12;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 294
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    :cond_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.schedule.error"

    const-string v2, "defaultMessage cannot be null or empty"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 298
    const-string v1, "status"

    const-string v2, "error.parameter.defaultMessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$13;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$13;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 308
    :cond_5
    const-wide/32 v0, 0x282170

    cmp-long v0, p2, v0

    if-gtz v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_7

    .line 309
    :cond_6
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.schedule.error"

    const-string v2, "delayInSeconds can not be negative, or greater than one month"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    const-string v1, "status"

    const-string v2, "error.parameter.delayInSeconds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$14;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$14;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 322
    :cond_7
    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 323
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lio/teak/sdk/TeakNotification$15;

    invoke-direct {v0, v6}, Lio/teak/sdk/TeakNotification$15;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-direct {v7, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 337
    new-instance v1, Lio/teak/sdk/TeakNotification$16;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lio/teak/sdk/TeakNotification$16;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V

    invoke-static {v1}, Lio/teak/sdk/b/e;->b(Lio/teak/sdk/b/e$a;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getExtras()Lio/teak/sdk/e/c;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/teak/sdk/TeakNotification;->extras:Lio/teak/sdk/e/c;

    return-object v0
.end method
