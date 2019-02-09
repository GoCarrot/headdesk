.class public final Lio/teak/sdk/wrapper/air/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/wrapper/air/k$a;
    }
.end annotation


# instance fields
.field private final a:Lio/teak/sdk/wrapper/air/k$a;


# direct methods
.method public constructor <init>(Lio/teak/sdk/wrapper/air/k$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/teak/sdk/wrapper/air/k;->a:Lio/teak/sdk/wrapper/air/k$a;

    .line 37
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/wrapper/air/k;)Lio/teak/sdk/wrapper/air/k$a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/k;->a:Lio/teak/sdk/wrapper/air/k$a;

    return-object v0
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p2, "argv"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    .line 43
    :try_start_0
    sget-object v0, Lio/teak/sdk/wrapper/air/k$2;->a:[I

    iget-object v3, p0, Lio/teak/sdk/wrapper/air/k;->a:Lio/teak/sdk/wrapper/air/k$a;

    invoke-virtual {v3}, Lio/teak/sdk/wrapper/air/k$a;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 64
    :goto_0
    if-eqz v0, :cond_0

    .line 65
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lio/teak/sdk/wrapper/air/k$1;

    invoke-direct {v3, p0, v0}, Lio/teak/sdk/wrapper/air/k$1;-><init>(Lio/teak/sdk/wrapper/air/k;Ljava/util/concurrent/Future;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 81
    :cond_0
    :goto_1
    return-object v1

    .line 45
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/teak/sdk/TeakNotification;->cancelNotification(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-static {}, Lio/teak/sdk/TeakNotification;->cancelAll()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_2
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v0, v2, v4, v5}, Lio/teak/sdk/TeakNotification;->scheduleNotification(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_3
    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    .line 55
    invoke-virtual {v0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 56
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 57
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 59
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v0, v4, v5, v3}, Lio/teak/sdk/TeakNotification;->scheduleNotification(Ljava/lang/String;J[Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
