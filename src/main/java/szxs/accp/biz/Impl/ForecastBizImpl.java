package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ForecastBiz;
import szxs.accp.dao.ForecastDao;
import szxs.accp.entity.Forecast;

import javax.annotation.Resource;
import java.util.List;
@Service("forecastBiz")
public class ForecastBizImpl implements ForecastBiz {
    @Resource(name = "forecastDao")
    private ForecastDao forecastDao;

    public List<Forecast> forecastList(Forecast forecast) {
        return forecastDao.forecastList(forecast);
    }

    public boolean addForecast(Forecast forecast) {
        return forecastDao.addForecast(forecast)>0;
    }

}
