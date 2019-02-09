.class final Lio/teak/sdk/wrapper/air/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/wrapper/air/j;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/concurrent/Future;

.field private synthetic b:Lio/teak/sdk/wrapper/air/j;


# direct methods
.method constructor <init>(Lio/teak/sdk/wrapper/air/j;Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lio/teak/sdk/wrapper/air/j$1;->b:Lio/teak/sdk/wrapper/air/j;

    iput-object p2, p0, Lio/teak/sdk/wrapper/air/j$1;->a:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/j$1;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    sget-object v1, Lio/teak/sdk/wrapper/air/Extension;->context:Lcom/adobe/fre/FREContext;

    iget-object v2, p0, Lio/teak/sdk/wrapper/air/j$1;->b:Lio/teak/sdk/wrapper/air/j;

    invoke-static {v2}, Lio/teak/sdk/wrapper/air/j;->a(Lio/teak/sdk/wrapper/air/j;)Lio/teak/sdk/wrapper/air/j$a;

    move-result-object v2

    invoke-virtual {v2}, Lio/teak/sdk/wrapper/air/j$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
