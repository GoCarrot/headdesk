.class public final Lio/teak/sdk/wrapper/air/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/wrapper/air/j$a;
    }
.end annotation


# instance fields
.field private final a:Lio/teak/sdk/wrapper/air/j$a;


# direct methods
.method public constructor <init>(Lio/teak/sdk/wrapper/air/j$a;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/teak/sdk/wrapper/air/j;->a:Lio/teak/sdk/wrapper/air/j$a;

    .line 49
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/wrapper/air/j;)Lio/teak/sdk/wrapper/air/j$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/j;->a:Lio/teak/sdk/wrapper/air/j$a;

    return-object v0
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p2, "argv"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/j;->a:Lio/teak/sdk/wrapper/air/j$a;

    sget-object v1, Lio/teak/sdk/wrapper/air/j$a;->b:Lio/teak/sdk/wrapper/air/j$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/teak/sdk/TeakNotification;->cancelNotification(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    .line 55
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/teak/sdk/wrapper/air/j$1;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/wrapper/air/j$1;-><init>(Lio/teak/sdk/wrapper/air/j;Ljava/util/concurrent/Future;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 72
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/j;->a:Lio/teak/sdk/wrapper/air/j$a;

    sget-object v1, Lio/teak/sdk/wrapper/air/j$a;->c:Lio/teak/sdk/wrapper/air/j$a;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lio/teak/sdk/TeakNotification;->cancelAll()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lio/teak/sdk/TeakNotification;->scheduleNotification(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
