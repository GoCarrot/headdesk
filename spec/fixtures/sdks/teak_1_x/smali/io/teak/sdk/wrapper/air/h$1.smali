.class final Lio/teak/sdk/wrapper/air/h$1;
.super Lio/teak/sdk/Teak$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/wrapper/air/h;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/teak/sdk/wrapper/air/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p2, p0, Lio/teak/sdk/wrapper/air/h$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lio/teak/sdk/Teak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0}, Lio/teak/sdk/e/c;-><init>()V

    .line 40
    const-string v1, "route"

    iget-object v2, p0, Lio/teak/sdk/wrapper/air/h$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 41
    const-string v1, "parameters"

    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 42
    sget-object v1, Lio/teak/sdk/wrapper/air/Extension;->context:Lcom/adobe/fre/FREContext;

    const-string v2, "DEEP_LINK"

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
