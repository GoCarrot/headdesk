.class public Lio/teak/sdk/TeakNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/TeakNotification$a;
    }
.end annotation


# static fields
.field public static final TEAK_NOTIFICATION_CLEARED_INTENT_ACTION_SUFFIX:Ljava/lang/String; = ".intent.TEAK_NOTIFICATION_CLEARED"

.field public static final TEAK_NOTIFICATION_OPENED_INTENT_ACTION_SUFFIX:Ljava/lang/String; = ".intent.TEAK_NOTIFICATION_OPENED"


# instance fields
.field a:I

.field final b:Ljava/lang/String;

.field public final bundle:Landroid/os/Bundle;

.field final c:Ljava/lang/String;

.field final d:Lio/teak/sdk/e/c;

.field private e:Lio/teak/sdk/e/c;

.field public isAnimated:Z

.field public platformId:I

.field public final teakNotifId:J


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput v3, p0, Lio/teak/sdk/TeakNotification;->a:I

    .line 583
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->c:Ljava/lang/String;

    .line 584
    const-string v0, "longText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 585
    const-string v0, "teakRewardId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    const-string v0, "imageAssetA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 587
    const-string v0, "teakDeepLink"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 588
    const-string v0, "teakCreativeName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->b:Ljava/lang/String;

    .line 589
    iput-boolean v3, p0, Lio/teak/sdk/TeakNotification;->isAnimated:Z

    .line 590
    iput-object p1, p0, Lio/teak/sdk/TeakNotification;->bundle:Landroid/os/Bundle;

    .line 594
    :try_start_0
    const-string v0, "extras"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 597
    :goto_0
    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->e:Lio/teak/sdk/e/c;

    .line 600
    :try_start_1
    const-string v0, "version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/teak/sdk/TeakNotification;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 608
    :goto_1
    const-string v0, "versioned_content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 610
    :try_start_2
    new-instance v0, Lio/teak/sdk/e/a;

    const-string v2, "versioned_content"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/teak/sdk/e/a;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0}, Lio/teak/sdk/e/a;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 612
    instance-of v2, v0, Lio/teak/sdk/e/c;

    if-eqz v2, :cond_0

    .line 613
    check-cast v0, Lio/teak/sdk/e/c;

    .line 615
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    if-eqz v2, :cond_0

    .line 618
    const-string v5, "(\\d+)\\.(\\d+)\\.(\\d+).*"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 620
    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 621
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 622
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x3

    .line 623
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v5, v6

    .line 626
    sget-object v2, Lio/teak/sdk/Teak;->MajorMinorRevision:[I

    .line 1660
    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x0

    aget v7, v5, v7

    if-eq v6, v7, :cond_2

    .line 1661
    const/4 v6, 0x0

    aget v2, v2, v6

    const/4 v6, 0x0

    aget v5, v5, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v2, v5

    .line 626
    :goto_3
    if-ltz v2, :cond_5

    :goto_4
    move-object v1, v0

    .line 632
    goto :goto_2

    .line 594
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

    .line 602
    :catch_1
    move-exception v0

    iput v3, p0, Lio/teak/sdk/TeakNotification;->a:I

    goto/16 :goto_1

    .line 1664
    :cond_2
    const/4 v6, 0x1

    :try_start_4
    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v5, v7

    if-eq v6, v7, :cond_3

    .line 1665
    const/4 v6, 0x1

    aget v2, v2, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v2, v5

    goto :goto_3

    .line 1668
    :cond_3
    const/4 v6, 0x2

    aget v6, v2, v6

    const/4 v7, 0x2

    aget v7, v5, v7

    if-eq v6, v7, :cond_4

    .line 1669
    const/4 v6, 0x2

    aget v2, v2, v6

    const/4 v6, 0x2

    aget v5, v5, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    sub-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1672
    goto :goto_3

    .line 633
    :catch_2
    move-exception v0

    .line 634
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    .line 639
    :cond_5
    if-nez v1, :cond_6

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 641
    :try_start_5
    new-instance v0, Lio/teak/sdk/e/c;

    const-string v2, "display"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 647
    :goto_5
    iput-object v0, p0, Lio/teak/sdk/TeakNotification;->d:Lio/teak/sdk/e/c;

    .line 649
    const-wide/16 v0, 0x0

    .line 651
    :try_start_6
    const-string v2, "teakNotifId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-wide v0

    .line 654
    :goto_6
    iput-wide v0, p0, Lio/teak/sdk/TeakNotification;->teakNotifId:J

    .line 656
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lio/teak/sdk/TeakNotification;->platformId:I

    .line 657
    return-void

    .line 642
    :catch_3
    move-exception v0

    .line 643
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    .line 644
    iput v3, p0, Lio/teak/sdk/TeakNotification;->a:I

    :cond_6
    move-object v0, v1

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_6

    :cond_7
    move-object v0, v1

    goto :goto_4
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
    .line 481
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.cancel_all.disabled"

    const-string v2, "Teak is disabled, ignoring cancelAll()."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 485
    const-string v0, "status"

    const-string v2, "error.teak.disabled"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$3;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$3;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 548
    :goto_0
    return-object v0

    .line 495
    :cond_0
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 496
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$4;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$4;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 507
    new-instance v2, Lio/teak/sdk/TeakNotification$5;

    invoke-direct {v2, v1, v0}, Lio/teak/sdk/TeakNotification$5;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V

    invoke-static {v2}, Lio/teak/sdk/b/d;->b(Lio/teak/sdk/b/d$a;)V

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
    .line 401
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    invoke-virtual {v0}, Lio/teak/sdk/o;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.cancel.disabled"

    const-string v2, "Teak is disabled, ignoring cancelNotification()."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 405
    const-string v0, "status"

    const-string v2, "error.teak.disabled"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$11;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$11;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 476
    :goto_0
    return-object v0

    .line 415
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    :cond_2
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.cancel.error"

    const-string v2, "scheduleId cannot be null or empty"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 419
    const-string v0, "status"

    const-string v2, "error.parameter.creativeId"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$12;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$12;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 429
    :cond_3
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 430
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$13;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$13;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 441
    new-instance v2, Lio/teak/sdk/TeakNotification$2;

    invoke-direct {v2, p0, v1, v0}, Lio/teak/sdk/TeakNotification$2;-><init>(Ljava/lang/String;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V

    invoke-static {v2}, Lio/teak/sdk/b/d;->b(Lio/teak/sdk/b/d$a;)V

    goto :goto_0
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
    .line 280
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    invoke-virtual {v0}, Lio/teak/sdk/o;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.schedule.disabled"

    const-string v2, "Teak is disabled, ignoring scheduleNotification()."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    const-string v1, "status"

    const-string v2, "error.teak.disabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$1;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$1;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 390
    :goto_0
    return-object v7

    .line 294
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    :cond_2
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.schedule.error"

    const-string v2, "creativeId cannot be null or empty"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 298
    const-string v1, "status"

    const-string v2, "error.parameter.creativeId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$6;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$6;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 308
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    :cond_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.schedule.error"

    const-string v2, "defaultMessage cannot be null or empty"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    const-string v1, "status"

    const-string v2, "error.parameter.defaultMessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$7;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$7;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 322
    :cond_5
    const-wide/32 v0, 0x282170

    cmp-long v0, p2, v0

    if-gtz v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_7

    .line 323
    :cond_6
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.schedule.error"

    const-string v2, "delayInSeconds can not be negative, or greater than one month"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 326
    const-string v1, "status"

    const-string v2, "error.parameter.delayInSeconds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/TeakNotification$8;

    invoke-direct {v1, v0}, Lio/teak/sdk/TeakNotification$8;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 336
    :cond_7
    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 337
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lio/teak/sdk/TeakNotification$9;

    invoke-direct {v0, v6}, Lio/teak/sdk/TeakNotification$9;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-direct {v7, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 351
    new-instance v1, Lio/teak/sdk/TeakNotification$10;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lio/teak/sdk/TeakNotification$10;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V

    invoke-static {v1}, Lio/teak/sdk/b/d;->b(Lio/teak/sdk/b/d$a;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getExtras()Lio/teak/sdk/e/c;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lio/teak/sdk/TeakNotification;->e:Lio/teak/sdk/e/c;

    return-object v0
.end method
