.class public final Lio/teak/sdk/wrapper/air/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    new-instance v1, Lio/teak/sdk/f/a$d;

    const-string v2, "2.0.1"

    invoke-direct {v1, v2}, Lio/teak/sdk/f/a$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method
